
function ans = Nraph(x0,dcp = 4)
  x1 = x0 ;
  prevx1 = x1 + 1;

  n = 0;
  do
    
    printf("\n\n***********************\n\n");
    
    F = fx(x0);
    Fdash = fdashx(x0);
    
    printf("fx = %d\n",F);
    printf("fdashx = %d\n\n",Fdash);
    
    printf("x%d = x%d - f(x) / f'(x) \n",n+1,n);
    printf("x%d = %d - %f / %f \n",n+1,n,F,Fdash);
    prevx1 = x1;
    x1 = x0 - (F/Fdash);
    printf("x%d = %f\n",n+1,x1);
    n += 1;
    x0 = x1;
    
   until (abs(x1 - prevx1) < 10  ** (-1*dcp));
    
    
endfunction
