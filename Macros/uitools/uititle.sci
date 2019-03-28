function Ht=uititle(H,tit,pos,offs)
// puts a "text" uicontrol by an existing group [H], as a title
// font properties must be changed a posteriori with set() commands
//  and possibly position(3:4) to fit the title string
   if ~exists('pos',"local") then pos="t"; end
   if ~exists('offs',"local") then offs=5; end
//get enclosing rectangle of all the grouped elements
   bs=uiblocksize(H)
   xm=bs(1); xM=bs(3); ym=bs(2); yM=bs(4)
//here the box sizes = size(tit).*(12,7) are empirically 
// acceptable for fontsize=12
   select pos
     case "r" then       
       xt=xM+offs; yt=ym; ht=yM-ym; wt=max(length(tit))*7; 
     case "b" then
       xt=xm; ht=length(length(tit))*12; yt=ym-ht-offs; 
       wt=xM-xm;
     case "l" then
       wt=max(length(tit))*7; xt=xm-offs-wt; yt=ym; ht=yM-ym;  
    else
       yt=yM+offs; xt=xm; ht=length(length(tit))*12; wt=xM-xm; 
   end
   Ht=uicontrol("style","text","string",tit,"position",[xt,yt,wt,ht])
return
