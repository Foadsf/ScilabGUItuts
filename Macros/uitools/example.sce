function randtint(h)
   set(h,'backgroundcolor',rand(3,1))
endfunction

close();figure(1,"position",[0,0,450,130],"backgroundcolor",[0,0,0])
h=uicontrol("style","radiobutton","position",[75,35,25,25])
h1=uititle(h,"uno"); randtint(h1)
h2=uititle(h,"due",'r'); randtint(h2)
h3=uititle(h,"tre",'b'); randtint(h3)
h4=uititle(h,"quattro",'l'); randtint(h4)

H=uiframeblock([h,h1,h2,h3,h4]);h=H(1); randtint(H($))
H=uiframeblock(H); h=H(1); randtint(H($))


h5=uititle(H,"Tutto"); randtint(h5)


h6=uititle([H,h5],["Ancora di +"],"r"); randtint(h6)


H=[H,h6];

H=uiframeblock(H); h=H(1); randtint(H($))

H1=copyuiaside(H,'r');
set(uititle([H,H1],'Big Stack!'),'backgroundcolor',rand(3,1))

set(h,"value",1)
