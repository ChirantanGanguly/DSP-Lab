function unitStepSequence(n)
  y=ones(1,n);
  x=0:(n-1);
  figure;
  %plot(x, y, 'MarkerSize', 5); 
  stem(x, y, 'MarkerSize', 5); 
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Unit Step Sequence");
  end