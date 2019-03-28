//Creating a figure with the border layout with 50 pixel padding in width and 10 in height
f = figure( ...
"dockable"        , "off",...
"infobar_visible" , "off",...
"toolbar"         , "none",...
"menubar_visible" , "off",...
"menubar"         , "none",...
"default_axes"    , "off",...
"layout"          , "border",...
"layout_options", createLayoutOptions("border", [50,10]),...
"visible"         , "on");

c = createConstraints("border", "top", [50,10]);
//First frame is on top with 10 pixel in height
u_grid1 = uicontrol(f,...
"style", "frame",...
"backgroundcolor", [1 0 0], ...
"constraints", c);

sleep(500);
c.position = "left";
u_grid2 = uicontrol(f,...
"style", "frame",...
"backgroundcolor", [0 1 0], ...
"constraints", c);

sleep(500);
c.position = "center";
u_grid3 = uicontrol(f,...
"style", "frame",...
"backgroundcolor", [0 0 1], ...
"constraints", c);

sleep(500);
c.preferredsize = [10, 100];
c.position = "right";
u_grid4 = uicontrol(f,...
"style", "frame",...
"backgroundcolor", [1 1 0], ...
"constraints", c);

sleep(500);
c.position = "bottom";
u_grid5 = uicontrol(f,...
"style", "frame",...
"backgroundcolor", [1 0 1], ...
"constraints", c);