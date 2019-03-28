// Include an editable table into a figure:

// Building a table of data:
params = ["City" "Country" "Population [Mh]" "Temp.[°C]"];
towns = ["Mexico" "Paris" "Tokyo" "Singapour"]';
country = ["Mexico" "France" "Japan" "Singapour"]';
pop  = string([22.41 11.77 33.41 4.24]');
temp = string([26 19 22 17]');
table = [params; [ towns country pop temp ]];

f = gcf();
clf
// as = f.axes_size;  // [width height]
as = get(f, "axes_size");
ut = uicontrol(f, "style", "table")//,..
               "string", table,..
               "position", [5 as(2)-100 300 87],.. // => @top left corner of figure
               "tooltipstring", "Data from majors towns");

