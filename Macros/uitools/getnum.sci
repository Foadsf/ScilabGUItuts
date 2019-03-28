function n=getnum(H,l,u)
// reads an "edit" box, makes sense of the number in there, 
//  check if it is in range, resets it within the range if it is out
   if ~exists('l',"local") then l=-%inf; end
   if ~exists('u',"local") then u=-%inf; end
   s=sscanf(get(H,"string"),"%f");
   n=max(min(s,u),l);
   if n<l then n=l; set(H,"string",string(l));end
   if n>u then n=u; set(H,"string",string(u));end
return
