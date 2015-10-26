function maratosb()
  invp=1e-5
  f(x)= x[1]+(x[1]^2+x[2]^2-1)^2/invp
  ∇f(x)= [1+4*x[1]*(x[1]^2+x[2]^2-1)/invp;4*x[2]*(x[2]^2+x[1]^2-1)/invp]
  H(x)= [4*(x[1]^2+x[2]^2-1)/invp 8*x[1]*x[2]/invp;8*x[1]*x[2]/invp 4*(x[2]^2+x[1]^2-1)/invp]
  x₀= [0.0;0.0]
  return f, ∇f, H, x₀
end
