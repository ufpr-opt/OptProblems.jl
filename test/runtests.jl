using OptProblems
using Base.Test

problems = getProblemList()

for problem in problems
  print("Problem $problem... ")
  print("Opening...")
  f, g, H, x0 = getProblem(problem)
  print("Computing f(x₀), ")
  f(x0)
  print("g(x₀), ")
  g(x0)
  print("H(x₀)... ")
  H(x0)
  println("Done")

  print("Testing approximation... ")
  n = length(x0)
  for i = 1:100
    v = rand(n) - rand(n)
    Ef(h) = ( f(x0+h*v) - f(x0) )/h - dot(g(x0),v)
    @test abs(Ef(1e-6)) < 1e-3*max(abs(f(x0)),1.0)
    Eg(h) = ( dot(g(x0+h*v) - g(x0),v) )/h - dot(H(x0)*v,v)
    @test abs(Eg(1e-6)) < 1e-3*max(norm(g(x0)),1.0)
  end
  println("Success")
end
