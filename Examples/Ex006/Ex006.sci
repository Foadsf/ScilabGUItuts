function updateSlider(h)
    disp(get(h, "value"));
endfunction
  

f = figure("position", [0 0 200 50]);

h = uicontrol(f, "style", "slider", "Max", 255, "Min", 1, "value", 128, "position", [0 0 200 50], "callback", "updateSlider");
//h.Min = 1;
//h.Max = 255;
//h.Value = 128;
//h.Position = [0 0 200 50];
//h.Callback = "updateSlider";
