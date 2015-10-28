module OptProblems

export getProblem, getProblemList

function __init__()
  problems = filter( x->(x[end-2:end] == ".jl" &&
    x != "OptProblems.jl"), readdir(Base.source_dir()))
  for p in problems
    @eval include($p)
  end

  global const listOfProblems = map(x->x[1:end-3], problems)
end

getProblemList() = listOfProblems

function getProblem(foo::Symbol)
  return eval(foo)()
end

function getProblem(foo::ASCIIString)
  return getProblem(symbol(lowercase(foo)))
end

end
