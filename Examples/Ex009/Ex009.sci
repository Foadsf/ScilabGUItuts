//Creates the figure with a gridbag layout
f = figure( ...
"dockable"        , "off",...
"infobar_visible" , "off",...
"toolbar"         , "none",...
"menubar_visible" , "off",...
"menubar"         , "none",...
"default_axes"    , "off",...
"layout"          , "gridbag",...
"visible"         , "on");

redf_grid   = [1, 1, 2, 1]; //Red frame is placed at 1x1 and is a 2x1 rectangle
greenf_grid = [3, 1, 1, 2]; //Green frame is at 3x1 and is a 1x2 rectangle
bluef_grid  = [1, 2, 1, 1]; //Blue frame is at 2x1 and is a 1x1 rectangle
yelf_grid   = [1, 3, 2, 2]; //Yellow frame is at 1x3 and is a 2x2 rectangle
magf_grid   = [3, 4, 1, 1]; //Magenta frame is at 3x4 and is a 1x1 rectangle
cyanf_grid  = [2, 2, 1, 1]; //Cyan is at 2x2 and is a 1x1 rectangle
whitf_grid  = [3, 3, 1, 1]; //White is at 3x3 and is a 1x1 rectangle

c = createConstraints("gridbag",[1, 1, 1, 1], [1, 1], "both", "center", [0, 0], [50, 50]);

c.grid = redf_grid;
u_grid1 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [1 0 0]                     , ...
"constraints"         , c);

sleep(500);
c.grid = greenf_grid;
c.weight = [0.1,1]; //Last column will fill horizontal space 10 times less than other columns
u_grid2 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [0 1 0]                     , ...
"constraints"         , c);

sleep(500);
c.grid = bluef_grid;
c.weight = [1,1];
c.fill = "none" //This will force the blue square to be at the preferred size
u_grid3 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [0 0 1]                     , ...
"constraints"         , c);

sleep(500);
c.grid = cyanf_grid;
c.fill = "vertical" // this will fill the empty space with cyan vertically
c.anchor = "right" //this will position the cyan stripe on the right
c.padding = [100,0] //this will extend the cyan stripe horizontally up to 100 pixel if space is available
u_grid1 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [0 1 1]                     , ...
"constraints"         , c);

sleep(500);
c.grid = yelf_grid;
c.fill = "both";
c.anchor ="center";
c.padding = [0,0];
u_grid4 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [1 1 0]                     , ...
"constraints"         , c);

sleep(500);
c.grid = whitf_grid;
c.weight = [0.1,1]
u_grid1 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [1 1 1]                     , ...
"constraints"         , c);

sleep(500);
c.grid = magf_grid;
c.weight = [0.1,1]
u_grid5 = uicontrol(f , ...
"style"               , "frame"                     , ...
"backgroundcolor"     , [1 0 1]                     , ...
"constraints"         , c);
