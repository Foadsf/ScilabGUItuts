function H1=copyuicontrol(H,newpos)
// newpos is in reality useful only for scalar H
//sorting is useful, as the stacking order coincides with the
// creation order
// this creates also an H1 of the same size as H
     [H1,k]=gsort(matrix(H,1,-1),"c","i")
     a=getall(H)
     for i=k
//first find the style and create a new uicontrol with the
// same style -- find cannot be used for list of lists
       for j=1:length(a)
         if a(j)(1)=="Style" then
            H1(i)=uicontrol(a(j)(1),a(j)(2))
         end
       end
//now copy also all the other properties
       for j=1:length(a)
         if a(j)(1)=="Position" & exists('newpos','local') then
            a(j)(2)=newpos
         end
         set(H1(i),a(j)(1),a(j)(2))
       end
     end
return
