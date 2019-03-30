h=figure();
// creates  figure number 1.
uicontrol( h, 'style','text', ...
 'string','scilab is great', ...
 'position',[50 70 100 100], ...
 'fontsize',15);
// put a clever text in figure 1
figure();
// create figure 2
uicontrol( 'style','text', ...
 'string','Really great', 'position',[50 70 100 100], 'fontsize',15);
// put a text in figure 2
close();
// close the current graphic window (ie fig. 2)
close(h);
// close figure 1
