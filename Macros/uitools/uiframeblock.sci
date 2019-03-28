function H1=uiframeblock(H,bw)
// creates a frame uicontrol UNDER a set of existing controls.
// this involves destroying all of them and recreating them 
// after the frame. Therefore the suggested call sequence is
// H=[h1,h2,...];  H1=uiframeblock(H); h1=H1(1),...
// which updates the values of the named handles. The number
// of return arguments equals (at most) that of the input arguments
// +1. The last value is the handle to the frame itself.
// The properties of the frame (e.g. its backgroundcolor) shall
// be changed after the call.
   if ~exists('bw',"local") then bw=5; end
   bs=uiblocksize(H)
   H1=[matrix(H,1,-1),0]
   H1($)=uicontrol("style","frame","position",..
       [bs(1)-bw,bs(2)-bw,bs(3)-bs(1)+2*bw,bs(4)-bs(2)+2*bw])
//now create and destroy in sorting order - so the stackings
// are preserved
   [a,k]=gsort(matrix(H,1,-1),"c","i")
   for i=k
     H1(i)=copyuicontrol(H(i))
     close(H(i))
   end
endfunction
