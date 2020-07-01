function answer = Gauss(A,b)
  Matt = [A, b];
  [nr,nc] = size(A);
  mat2Eq(A,b);
  printf("\n****************\n")
  
  for i = 1:nr
  printf("***************\n Iteration %d\n",i);
  if(A(i,i) != 1)
    pivot = A(i,i);
    printf("Dividing by %d\n", A(i,i));
    b(i) = b(i) / pivot;
    A(i,:) = A(i,:) / pivot;
   
    mat2Eq(A,b);
  endif
  
  for j = i+1:nr
    printf("\n Subtracting %d * row %d from row %d\n\n", A(j,i),i,j);
    b(j) = b(j) - A(j,i) * b(i);
    A(j,:) = A(j,:) - (A(j,i) * A(i,:));
    mat2Eq(A,b);
  endfor
endfor

printf("Answer matrix(For checking)");
inv(A) * b
endfunction
