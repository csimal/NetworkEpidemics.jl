module NetworkEpidemics

using ProgressMeter
using LinearAlgebra
using DifferentialEquations
using LightGraphs
using LightGraphs.SimpleGraphs
using StatsBase


include("utils\\categorical_tree.jl")
include("utils\\rand.jl")
include("utils\\unzip.jl")

include("models\\AbstractEpidemicModel.jl")

export AbstractEpidemicModel

include("EpidemicEvent.jl")

export EpidemicEvent

include("models\\models\\metapopulation.jl")
include("models\\models\\metaplex.jl")
include("models\\models\\contact_process.jl")


include("gillespie.jl")
include("meanfield.jl")

export gillespie, meanfield

include("models\\dynamics\\SI.jl")
include("models\\dynamics\\SIS.jl")
include("models\\dynamics\\SIR.jl")

export Metapopulation, ContactProcess, Metaplex
export SI, SIS, SIR

end # module
