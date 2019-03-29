function updateListBox(h)
    disp(get(h, "value"))
endfunction

width = 200;
height = 120;

f = figure();
//f.Position = [0 0 width height];
set(f, "position", [0 0 width height]);
h = uicontrol(f, "style", "listbox", "callback", "updateListBox");
//h.Position = [0 0 width height];
set(h, "position", [0 0 width height]);
//h.String = ["apple" "orange" "banana" "berry" "grape"];
set(h, "string", ["apple" "orange" "banana" "berry" "grape"]);
//h.Callback = "updateListBox";
//set(h, "callback", "updateListBox");
