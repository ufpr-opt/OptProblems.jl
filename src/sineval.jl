function sineval()
  c = 1e-4
  x = [4.712389; -1.0]
  f(x) = (x[2]-sin(x[1]))^2/c + x[1]^2/4
  g(x) = [x[1]/2 + 2*cos(x[1])*(x[2] - sin(x[1]))/c;
        (2*(x[2] - sin(x[1])))/c]
  H(x) = [(c + 4*x[2]*sin(x[1])+4*cos(2*x[1]))/2*c  -2*cos(x[1])/c;
        -2*cos(x[1])/c  2/c]
  return f, g, H, x
end
