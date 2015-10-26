function denschna()
  f(x) = x[1]^4 + (x[1]+x[2])^2 + (-1.0+exp(x[2]))^2
  ∇f(x) = [4*x[1]^3 + 2*(x[1]+x[2]);2*(x[1]+x[2]) + 2*exp(x[2])*(-1.0+exp(x[2]))]
  H(x) = [12*(x[1]^2)+2 2;2 2-2*exp(x[2])+4*exp(2*x[2])]
  x₀ = [1.0;1.0]
  return f, ∇f, H, x₀
end
