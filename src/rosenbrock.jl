function rosenbrock()
  f(x) = (1-x[1])^2 + 100*(x[2]-x[1]^2)^2
  ∇f(x) = [-2*(1-x[1]) - 400*x[1]*(x[2]-x[1]^2); 200*(x[2]-x[1]^2)]
  H(x) = [2-400*x[2]+1200*x[1]^2  -400*x[1]; -400*x[1]  200]
  x₀ = [-1.2;1.0]
  return f, ∇f, H, x₀
end

# Aliases
rosenbr() = rosenbrock()
rosen() = rosenbrock()
