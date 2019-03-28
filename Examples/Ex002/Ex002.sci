// create a mlist
mymlist = mlist(['objid', 'A', 'B'], [], []);

// overload set / get for objid
function result = %objid_uicontrol(varargin)
  // res = uicontrol(mymlist,'A');
  obj_tmp   = varargin(1);
  field_tmp = varargin(2);
  mprintf('uicontrol on an object of type %s, field = %s\n', typeof(obj_tmp), field_tmp);
  result = %t;
endfunction

res = uicontrol(mymlist, 'property');
