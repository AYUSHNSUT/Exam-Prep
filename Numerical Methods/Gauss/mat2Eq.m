function Ansa = mat2Eq(A,b)
  [nr,nc] = size(A);
  printf("\n\n")
  for i = 1: nr
    for j = 1:nc
      if(A(i,j)!=0)
        if(j!= nc)
        printf("%dX%d + " ,A(i,j),j);
        else
        printf("%dX%d = %d",A(i,j), j, b(i));
      endif
      endif
    endfor
    printf("\n\n");
  endfor
endfunction
