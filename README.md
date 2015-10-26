# OptProblems.jl

Nonlinear optimization repository in Julia.

## Usage

You must now the problem name to call a function with it's name.
Install this package and use with

````julia
julia> Pkg.clone("https://github.com/ufpr-opt/OptProblems.jl")
julia> using OptProblems
````

Now obtain function definitions with

````julia
julia> f, g, H, x0 = OptProblems.rosenbrock()
julia> #OR
julia> f, g, H, x0 = getProblem("rosenbrock")
julia> #OR
julia> f, g, H, x0 = getProblem(:rosenbrock)
````

The string version is case insensitive.

## Contributing

To contribute a problem, create a file for it, then include the file on
`OptProblems.jl`, then add it to the test.
Use a comprehensive naming, and if necessary, add an alias for it.
See for instance, Rosenbrock's problem. We chose to name the function
`rosenbrock`, but CUTEst users might try to call `rosenbr`, which must
also be accepted.
All function names should be lowercase and use `_` (underscore) to separate
words when necessary.

After that, send a pull request or e-mail the patch to
`abel.s.siqueira@gmail.com`.

## Objective

This repository will be used mostly as exercise for students, or as a quick test
for algorithms.
For a serious optimization repository in Julia, consider
[CUTEst.jl](https://github.com/optimizers/CUTEst.jl).

## License

Licensed under the GNU GPL v3
