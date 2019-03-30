funcprot(0)//no warning message when a function is redefined
clear all

labels1=["Nom:","Numero:"];
values1=string(zeros(1,2));
guiw1=400; guih1=300; guih2=90;
f=figure(1,'position',[0,0,guiw1,guih1+20],'figure_name','Identification');
uicontrol(f,'style','text','position',[0,guih1,guiw1,20],'string','Saisie d`informations:',"horizontalalignment","center","BackgroundColor",[1,1,1]);

uicontrol(f,"style","text","string",sci2tcl(labels1(1)),"position",[10,guih1-1*20,200,20],"horizontalalignment","left");
guientry(1)=uicontrol(f,"style","edit","string",values1(1),"position",[210,guih1-1*20,180,20],"horizontalalignment","left","callback",["str(1)=get(guientry(1),''string'');']);
uicontrol(f,"style","text","string",sci2tcl(labels1(2)),"position",[10,guih1-2*20,200,20],"horizontalalignment","left");
guientry(2)=uicontrol(f,"style","edit","string",values1(2),"position",[210,guih1-2*20,180,20],"horizontalalignment","left","callback",["str(2)=get(guientry(2),''string'');']);

guivariables=["nom","numero"];

uicontrol(f,"Style","pushbutton","String","OK","Position",[150,5,guiw1/4,25],"Callback","guistop()","horizontalalignment","center","background",[1,0.1,0.1]);


function tt=sci2tcl(ttx)
  for t=['\',''"','[',']','{','}']
    ttx=strsubst(ttx,t,'\'+t)
  end
  a=ascii(ttx); af=find(a>127); tt2=ttx; n=length(a);
  for k=af
    if k<n then
      if strindex("01234567890abcdefABCDEF",part(ttx,k+1))<>[] then
        tt2=strsubst(tt2,part(ttx,k),"\u"+dec2hex(a(k))+"\")
      else
        tt2=strsubst(tt2,part(ttx,k),"\u"+dec2hex(a(k)))
      end
    else
       tt2=strsubst(tt2,part(ttx,k),"\u"+dec2hex(a(k)))
    end
  end
  ttx=tt2
  if size(ttx,'*')<2 then tt=ttx,return,end
  tt=ttx(1)
  ttx=ttx(2:$)';
  for t=ttx
    tt=tt+'\n '+t
  end
endfunction

function guistop()
//  bouton OK: on sauvegarde les champs
fd = mopen('resultat.txt','wt');
mfprintf(fd,'Identité de l`utilisateur: \n');
mfprintf(fd,'%s\n',str(1));
mfprintf(fd,'%s\n',str(2));
mfprintf(fd,'Fin de texte \n');
mclose(fd);
close;
endfunction
