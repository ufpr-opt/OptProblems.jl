module OptProblems

export getProblem

include("beale.jl")
include("cube.jl")
include("denschnb.jl")
include("himmelbh.jl")
include("humps.jl")
include("rosenbrock.jl")
include("sisser.jl")
include("zangwil2.jl")

function getProblem(foo::Symbol)
  return eval(foo)()
end

function getProblem(foo::ASCIIString)
  return getProblem(symbol(lowercase(foo)))
end

end
