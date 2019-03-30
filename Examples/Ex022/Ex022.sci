function []=plot3d_tcl()
   global('a','b');
   a_new=evstr(TCL_GetVar("a"));
   b_new=evstr(TCL_GetVar("b"));
   if a<>a_new | b<>b_new then
      a=a_new;
      b=b_new ;
      t=linspace(0,2,200);
      xbasc();
      t=linspace(-b*%pi,b*%pi,20);
      plot3d(t,t,a*sin(t)'*cos(t));
      end
   endfunction

TCL_SetVar('a','3');
TCL_SetVar('b','2');
plot3d_tcl();
