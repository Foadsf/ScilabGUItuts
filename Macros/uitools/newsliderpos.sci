function newsliderpos(H)
//Scilab <=2.6 had a bug in positioning "slider" uicontrols:
// their positions were computed from the top of the figure
// downwards, oppositely to all the other uicontrols.
// This means that GUIs written for Scilab <=2.6 will be messed
//  up if imported in Scilab >2.6. The following function mends
//  the situation, by recomputing and assigning positions to
//  the sliders. 
// Given the available ui commands in scilab, the function
//  has to be called after setting the relevant figure current,
//  and with a full list of handles to the sliders contained 
//  in that figure.

p=get(gcf(),"position"); height=p(4)

for i=1:length(H)
  if get(H(i),"style")=="slider" then
     p=get(H(i),"position")
     set(H(i),"position",[p(1),height-p(2)-p(4),p(3),p(4)])
  end
end
