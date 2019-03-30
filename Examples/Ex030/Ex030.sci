h1 = figure();
h1.Position = [0 0 200 150];
htext1=uicontrol(h1,"style","edit");
htext1.Position = [0 80 100 20];
htext1.String = "";
htext1.BackgroundColor=[1 1 1];

hbutton1=uicontrol(h1,"style","pushbutton");
hbutton1.Position = [0 0 50 30];
hbutton1.String = "OK";
hbutton1.Callback = "OK1()";
set(hbutton1,'user_data',htext1); //store the edit uicontrol handle in the button user data



function OK1()
htext1=gcbo.user_data; //gco is the handle of the calling uicontrol
global NOM;
NOM=htext1.String;
disp(NOM)
//exec('essai2.sce')
close(h1)
endfunction
