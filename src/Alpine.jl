__precompile__()

module Alpine

const ALPINE_DEBUG = false

using JuMP
using MathProgBase


using LinearAlgebra
using Random
using Distributed
using Statistics
using Printf
using SparseArrays

include("const.jl")

# Engine for High-level Algorithmic Control and User-interface
include("solver.jl")
include("mpb2moi.jl") # Transition file

# Engine for expression handling
include("nlexpr.jl")
include("operators.jl")

# Main Algorithmic Process
include("algorithm.jl")
include("presolve.jl")
include("amp.jl")
include("embedding.jl")
include("heuristics.jl")

# Convexification method
include("multi.jl")
include("tmc.jl")

# Model Manipulation and utilities
include("bounds.jl")
include("utility.jl")

# Othes
include("log.jl")

end # module
