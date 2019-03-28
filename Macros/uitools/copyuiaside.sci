function H1=copyuiaside(H,pos,offs)
// makes a copy of the group of uicontrols with handle H
// shifted aside of width(H)+offs [height(H)+offs]
// Useful to create stacks of similar controls
   if ~exists('pos',"local") then pos="t"; end
   if ~exists('offs',"local") then offs=5; end
//get enclosing rectangle of all the grouped elements
   bs=uiblocksize(H)
   w=bs(3)-bs(1); h=bs(4)-bs(2)
   select pos
     case "r" then
        shpos=[w+offs,0,0,0]
     case "b" then
        shpos=[0,-h-offs,0,0]
     case "l" then
        shpos=[-w-offs,0,0,0]
    else
        shpos=[0,h+offs,0,0]
   end
//create new controls and set them the shifted positions
//sorting is useful, as the stacking order coincides with the
// creation order
// this creates also an H1 of the same size as H
     [H1,k]=gsort(matrix(H,1,-1),"c","i")
   H1=H
   for i=k
     H1(i)=copyuicontrol(H(i),get(H1(i),'position')+shpos)
   end
endfunction