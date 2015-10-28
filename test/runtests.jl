using OptProblems

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
end
