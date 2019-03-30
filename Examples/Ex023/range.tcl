#tcl/tk script
toplevel .top
wm resizable .top 0 0;
set a 5;
set b 2;
#—————————-
wm title .top {tk test};
global ok wait but;
proc runScilab {bidon} {ScilabEval plot3dtcl()};
#—– top label
frame .top.widtop
label .top.widlabel −text {Surface parameters}
pack .top.widlabel −in .top.widtop −side top −pady5
#—- a range control for a
frame .top.wid_frame2
label .top.widlabel_a −text {a}
scale .top.widscale_a −variable a −width 8 −state normal −from 1 −to 10 \
  −resolution .01 −orient horizontal −width 8 −command {runScilab}
pack .top.widlabel_a −in .top.widframe2 −side left −anchor w −padx 5 \
  −expand true
pack .top.widscale_a −in .top.widframe2 −side left −anchor e −padx 5
#—– a range control for b
frame .top.widframe3
label .top.widlabel_b −text {b}
scale .top.widscale_b −variable b −width 8 −state normal −from 1 −to 3 \
  −resolution .01 −orient horizontal −width 8 −command {runScilab}
pack .top.widlabel_b −in .top.widframe3 −side left −anchor w −padx 5 \
  −expand true
pack .top.widscale_b −in .top.widframe3 −side left −anchor e −padx 5
#——————-
pack .top.widtop −in .top
pack .top.wid_frame2 −in .top
pack .top.wid_frame3 −in .top
#——————-
raise.top
