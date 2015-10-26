function himmelbh()
  x0=[1.0, 2.0]
  f(x)=-3*x[1]-2*x[2]+2+x[1]^3+x[2]^2
  ∇f(x)=[-3+3*x[1]^2; -2+2*x[2]]
  H(x)=[6*x[1] 0;0 2]
  return f, ∇f, H, x0
 end
