// by Enrico Segre GPLv3

function tt=sci2tcl(ttx)
//sledgehammer approach: transform every char of the string to \xNN
// in order to give a chance to extended ascii chars, without getting
// in trouble with \xHH+NN occurrences
// This should work for handy nonliterals like \mu, ^2, ^3 in iso8859-1,
// no idea what really happens in multi-byte encodings...
  tt=[];
  for j=1:size(ttx,"*")
    if ttx(j)<>"" then tt=[tt,strcat("\x"+dec2hex(ascii(ttx(j))))]; else tt=[tt,""]; end
  end
  tt=strcat(tt,"\n")  // Note: was "\n " -- was the indent intentional?
endfunction
