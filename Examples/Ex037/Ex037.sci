lines(0) // disables vertical paging

set("figure_style","new") //create a figure and set the figure as the current selected one
f=get("current_figure") //get the handle of the current figure :
                                        //if none exists, create a figure and return the corresponding handle
f.figure_position
f.figure_size=[200,200]
f.background=2
f.children  // man can see that an Axes entity already exists
delete(f);
f=gcf(); // macro shortcut <=> f=get("current_figure")
f.pixmap = "on" // set pixmap status to on
plot2d() // nothing happens on the screen...
show_pixmap() // ...display the pixmap on screen
