function t = uititle(h, text, relpos)
    // pos = h.position;
    pos = get(h, 'position');
    select relpos
    case "r"
        pos(3) = 2 * pos(3);
        lay_opt = createLayoutOptions("grid", [1,2]);
    case "t"
        pos(4) = 2 * pos(4);
        lay_opt = createLayoutOptions("grid", [2,1]);
    case "l"
        pos(3) = 2 * pos(3);
        lay_opt = createLayoutOptions("grid", [1,2]);
    case "b"
        pos(4) = 2 * pos(4);
        lay_opt = createLayoutOptions("grid", [2,1]);
    else
        error("Wrong relative position");
    end
    f = uicontrol("style", "frame", "position", pos, "layout", "grid")
    set(f, "layout_options", lay_opt);
    c = createConstraints("grid");
    if relpos == "r" | relpos == "b" then
        t = uicontrol(f, "style", "text", "string", text, "horizontalalignment", "center",...
        "constraints", c);
        h.parent = f;
    else
        h.parent = f;
        t = uicontrol(f, "style", "text", "string", text, "horizontalalignment", "center",...
        "constraints", c);
    end
endfunction



// first create the GUI panel
figw = 220; 
figh = 160;
//close(1)
f = figure(1, "position", [0 0 figw figh]);
//PUSH TO STOP
hstop = uicontrol(f, "style", "pushbutton", "Min", 0, "Max", 1, "string", "STOP",..
    "position", [10 10 61 50], "callback", "infiniteloop=%F");
// TRIGGERED MODE
htrig = uicontrol(f, "style", "radiobutton", "Min", 0, "Max", 1, "value", 0,..
    "position", [80 10 20 20]);
httrig = uititle(htrig, "free/trig", "r");
// BINNING x2
hbin = uicontrol(f, "style", "radiobutton", "Min", 0, "Max", 1, "value", 0,..
    "position", [80 40 20 20]);
htbin = uititle(hbin,"bin x2", "r")
// GREYSCALE
hbri = uicontrol(f, "style", "slider", "Min", 1, "Max", 255, "value", 128,..
    "position", [10 70 200 20]);
htbri = uititle(hbri, "greyscale", "t");
// EXPOSURE (only for untriggered)
hexp = uicontrol(f, "style", "slider", "Min", 1, "Max", 1200, "value", 40,..
    "position", [10 120 200 20]);
htexp = uititle(hexp, "exposure time", "t");

hexp = uicontrol(f, "style", "spinner")
