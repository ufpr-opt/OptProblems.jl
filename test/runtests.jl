using OptProblems

problems = filter( x->(x[end-2:end] == ".jl" && x != "OptProblems.jl"),
  readdir(Pkg.dir("OptProblems", "src")) )
problems = map(x->x[1:end-3], problems)

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
