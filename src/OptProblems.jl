module OptProblems

export getProblem

include("rosenbrock.jl")
include("zangwil2.jl")

function getProblem(foo::Symbol)
  return eval(foo)()
end

function getProblem(foo::ASCIIString)
  return getProblem(symbol(lowercase(foo)))
end

end
