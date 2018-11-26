# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [fixdoctests]
#
# for local builds.

using Documenter
using LegendDataTypes

makedocs(
    sitename = "LegendDataTypes",
    modules = [LegendDataTypes],
    format = :html,
    pages=[
        "Home" => "index.md",
        "API" => "api.md",
        "LICENSE" => "LICENSE.md",
    ],
    doctest = ("fixdoctests" in ARGS) ? :fix : true,
    html_prettyurls = !("local" in ARGS),
    html_canonical = "https://legend-exp.github.io/LegendDataTypes.jl/stable/",
)

deploydocs(
    repo = "github.com/legend-exp/LegendDataTypes.jl.git"
)
