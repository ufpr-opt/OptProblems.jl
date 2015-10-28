function expfit()
  p = 10
  h = 0.25
  c=[α, β]
  f(c) = 0
  g(c) = zeros(2)
  H(c) = zeros(2,2)
  for i=1:p
    f(c) = f(c) + (α*exp(i*h*β) - i*h)
    g(c) = g(c) + [2*(α*exp(i*h*β) - i*h)*(exp(i*h*β));
                   2*(α*exp(i*h*β) - i*h)*(α*i*h*exp(i*h*β))]
    H(c) = H(c) + [2*(α*exp(2*i*h*β) 2*i*h*exp(i*h*β)*(2*α*exp(i*h*β)-i*h);
           2*i*h*exp(i*h*β)*(2*α*exp(i*h*β)-i*h)
           2*(i*h)^2*α*exp(i*h*β)*(2*α*exp(i*h*β)-i*h)]
  end
  x = [0.0; 0.0]

  return f(c), g(c), H(c), x
end
