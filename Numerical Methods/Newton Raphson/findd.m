% to plot function to get an idea about roots
function ansa = findd()
  x0 = [-3:0.1:3];
  mat = fx(x0);
  plot(x0,mat);
endfunction
