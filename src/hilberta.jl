function hilberta()
  A = [1 0.5; 0.5 1/3.]
  f(x) = dot(x,A*x)
  g(x) = 2*A*x
  H(x) = 2*A
  x₀ = [-4.0;-2.0]
  return f, g, H, x₀
end
