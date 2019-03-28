// create a figure
f = figure('position', [200, 200, 610, 460]);

// create a listbox
h = uicontrol(f, 'style', 'listbox', 'position', [30 10 100 200]);

// fill the list
set(h, 'string', "item 1|item 2|item 3");
