// Include an editable table into a figure:
// Building a table of data:
params = [" " "Population [Mh]" "Temp.[Â°C]" ];
towns = ["Mexico" "Paris" "Tokyo" "Singapour"]';
pop  = string([22.41 11.77 33.41 4.24]');
temp = string([26 19 22 17]');
table = [params; [ towns pop temp ]]

f = createWindow();
f.figure_size = [280 150];
f.figure_name = "My Table";
as = f.axes_size;  // [width height]
// => @bottom left corner of figure
ut = uicontrol("style", "table",..
               "string", table,..
               "position", [5 5 250 90],..
               "tag", "myTable");

// Modify by hand some values in the table.
// Then get them back from the UI:
matrix(ut.string, size(table))
