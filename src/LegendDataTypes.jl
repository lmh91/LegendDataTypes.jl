# This file is a part of LegendDataTypes.jl, licensed under the MIT License (MIT).

__precompile__(true)

module LegendDataTypes

using ArraysOfArrays
using ElasticArrays
using RadiationDetectorSignals
using RadiationSpectra
using RecipesBase
using StaticArrays
using StatsBase
using UnsafeArrays
using Unitful

import Tables
import TypedTables
import Colors

include("daq.jl")
include("abstract_io.jl")
include("output_generation.jl")
include("radware_sigcompress.jl")

end # module
