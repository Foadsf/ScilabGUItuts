lines(0) // disables vertical paging

//Example 1
f=get("current_figure") //get the handle of the current figure :
                        //if none exists, create a figure and return the corresponding handle
f.figure_position
f.figure_size=[200,200]
f.background=2
f.children  // man can see that an Axes entity already exists
delete(f);
f=gcf(); // macro shortcut <=> f=get("current_figure")
f.immediate_drawing = "off";
plot2d() // nothing happens on the screen...
f.immediate_drawing = "on";

//Example 2 : default_figure settings
df=get("default_figure") // get the default values (shortcut is gdf() )
// Let's change the defaults...
df.color_map=hotcolormap(128)
df.background= 110 // set background toa kind of yellow (Note that we
                   // are using a color index inside the color_map previously redefined)
scf(122); // creates new figure number 122 with the new default
plot2d()
scf(214);
t=-%pi:0.3:%pi;
plot3d(t,t,sin(t)'*cos(t),35,45,'X@Y@Z',[15,2,4]);
