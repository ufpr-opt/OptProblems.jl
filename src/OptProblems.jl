module OptProblems

export getProblem, getProblemList

function __init__()
  if VERSION < v"0.4-"
    dir = dirname(Base.source_path())
  else
    dir = Base.source_dir()
  end
  problems = filter( x->(x[end-2:end] == ".jl" &&
    x != "OptProblems.jl"), readdir(dir) )
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
