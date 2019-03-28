function bs=uiblocksize(H)
//finds the coordinates of the rectangle which encloses
// all the uicontrols specified by the vector of handles H
   xm=%inf;ym=%inf; xM=-%inf;yM=-%inf;
   for i=1:length(H)
     a=get(H(i),"position")
     x1=a(1); y1=a(2); w=a(3); h=a(4);
     xm=min(xm,x1); xM=max(xM,x1+w);
     ym=min(ym,y1); yM=max(yM,y1+h);
   end
   bs=[xm,ym,xM,yM]
endfunction
