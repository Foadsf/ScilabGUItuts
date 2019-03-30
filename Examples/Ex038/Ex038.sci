//Example 2 : default_figure settings
df=get("default_figure") // get the default values (shortcut is gdf() )
// Let's change the defaults...
df.color_map=hotcolormap(128)
df.background= 110 // set background toa kind of yellow (Note that we are using a color index inside the color_map previously redefined)
scf(122); // creates new figure number 122 with the new default
plot2d()
scf(214);
t=-%pi:0.3:%pi;
plot3d(t,t,sin(t)'*cos(t),35,45,'X@Y@Z',[15,2,4]);
