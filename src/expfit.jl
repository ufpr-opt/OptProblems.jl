function expfit()
  p = 10
  h = 0.25
  α = 20
  β = 20
  s1=s2=s3=0
  for i=1:p
    s1 = s1 + (α*exp(i*h*β) - i*h)
    s2 = s2 + 2*(α*exp(i*h*β) - i*h)*(α*h*β*exp(i*h*β) - h)
    s3 = s3 + 2*(α*exp(i*h*β) - h)^2 + 2*(α*exp(i*h*β) - i*h)*(α*(h^2)*β*exp(i*h*β))
  end
  x = [1.0; 1.0]
  
  return s1, s2, s3, x
end
#(2*α*h*β*exp(i*h*β)-h)
