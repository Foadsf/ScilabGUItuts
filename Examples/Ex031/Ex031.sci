f=figure();
set(f,'position',[0,0,250,100])
set(f,'figure_name','Grafik');
//Создаем кнопку, которая при щелчке по ней мышкой вызывает
//функцию gr_sin.
Button=uicontrol('style','pushbutton','string','Button',...
'position',[50,50,100,20],'CallBack','gr_sin');
function y=gr_sin()
x=-5:0.2:5;
y=sin(x);
plot(x,y);
xgrid();
endfunction
