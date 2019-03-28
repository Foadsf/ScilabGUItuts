function all=getall(H)
// reads all the properties of an uicontrol (one only)
  props=[ "Style"; "backgroundcolor"; "callback";
         "fontangle"; "fontsize"; "fontunits"; "fontweight";
         "ListboxTop"; "Max"; "Min"; 
         "Position"; "SliderStep"; "String"; "Tag";
         "Units"; "Userdata"; "Value"]
//it is convenient that "Style" is always the first property 
  all=list(); j=0
  for i=1:length(length(props))
     s=get(H,props(i))
     if s<>[] & s<>"" then 
        j=j+1; all(j)=list(props(i),s);
     end 
  end
return
