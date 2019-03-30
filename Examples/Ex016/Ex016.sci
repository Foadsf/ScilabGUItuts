function tt=sci2tcl(ttx)
   // from here--> http://cgit.scilab.org/scilab/diff/scilab/macros/scicos_new/sci2tcl.sci?h=5.1&id=4.0
   // /usr/lib64/scilab-4.1.2/macros/scicos/sci2tcl.sci
   // /usr/lib/scilab-3.0/macros/scicos/sci2tcl.sci
    for t=['\',''"','[',']','{','}']
        ttx=strsubst(ttx,t,'\'+t)
    end
    if size(ttx,'*')<2 then tt=ttx,return,end
    tt=ttx(1)
    ttx=ttx(2:$)';
    for t=ttx
        tt=tt+'\n '+t
    end
endfunction



labels1 = ["particle diameter (nm)","particle density (g/cm³)",..
    "gas viscosity µ @ 0°C (N·sec/m²)","gas density @ 0°C, 1atm (kg/m³)",...
    "mean free path @ 0°C, 1atm (nm)","gamma, Cv/Cp",..
    "Sutherland temperature, °K",..
    "Temperature, °K",..
    "volume flow rate (standard l/min)"];
values1 = string(zeros(1, 9));
guiw1 = 400;
guih1 = 300;
guih2 = 90;
close(1);
f = figure(1, "position", [0,0,guiw1,guih1+20], "figure_name", "Aerodynamic Lens Design");
uicontrol(f, "style", "text", "string", "general properties", "position", [0,guih1,guiw1,20],...
"horizontalalignment", "center", "background", [1,1,1]);

for k = 1:size(labels1, 2)
    uicontrol(f, "style", "text", "string", sci2tcl(labels1(k)), "position", [10,guih1-k*20,200,20],...
    "horizontalalignment", "left");
    guientry(k) = uicontrol(f, "style", "edit", "string", values1(k), "position", [210, guih1 - k * 20, 180, 20],...
    "horizontalalignment", "left");
end

labels2=["orifice diameters (mm)","tube diameter(s) (mm)","input pressure (Pa)"];
values2=[sci2exp(ones(1,5)),sci2exp(ones(1,5)*10),string(100000)];
uicontrol(f,"style","text","string","telescope parameters","position",[0,guih2,guiw1,20],...
"horizontalalignment","center","background",[1,1,1]);
for k=1:size(labels2,2)
    uicontrol(f,"style","text","string",sci2tcl(labels2(k)),"position",[10,guih2-k*20,200,20],...
    "horizontalalignment","left");
    guientry(k+size(labels1,2))=uicontrol(f,"style","edit","string",sci2tcl(values2(k)),..
    "position",[210,guih2-k*20,180,20],"horizontalalignment","left");
end
guivariables=["dp","rhop","mu0","rhog0","lambda0","CvCp","S","T","mdot","df","ds","pin"];
//stop button
guistop=%f;
uicontrol(f,"style","pushbutton","string","Stop","position",[150,5,guiw1/4,25],...
"callback","guistop=%t","horizontalalignment","center","background",[1,0.1,0.1]);
//function for reading all the numbers from the gui
function varargout=getguipars(guientry,guivariables)
    //read from gui
    for k=1:length(guientry)
        ierr=execstr(guivariables(k)+"=eval(get(guientry(k),""string""))","errcatch")
        // do something nice if the entry is valid/invalid
        if ierr>0 then
            bgc=[1,0.8,0.8];
        else
            bgc=[0.9,0.9,0.9];
        end
        set(guientry(k),"backgroundColor",bgc)
    end
    //redimensionalizing and validation
    //physics
    dp=dp*1e-9; lambda0=lambda0*1e-9; rhop=rhop*1e3; rhog0=rhog0;
    rhog=density(%1atm,T)
    mdot=mdot*rhog/1000/60;
    //telescope
    df=df/1000; ds=ds/1000;
    if length(ds)<length(df) then ds=[ds(:)',ds($)*ones(1,length(df)-length(ds))]; end
    // list all together
    varargout=list()
    for k=1:length(guientry)
        execstr("varargout(k)="+guivariables(k))
    end
endfunction
