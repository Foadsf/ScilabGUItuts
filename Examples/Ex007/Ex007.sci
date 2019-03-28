function PushButton()
    disp("Push!")
endfunction

//f = scf();
//set(f, "position", [0 0 200 20]);
f = figure("position", [0 0 200 20]);
// f.Position = [0 0 200 20];

h = uicontrol(f, "style", "pushbutton", "position", [0 0 200 20], "string", "update", "BackgroundColor", [0.9 0.9 0.9], "callback", "PushButton");
// h.Position = [0 0 200 20];
// h.String = "Update";
// h.BackgroundColor = [0.9 0.9 0.9];
// h.Callback = "pushmybutton";
