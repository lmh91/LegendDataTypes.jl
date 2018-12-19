var documenterSearchIndex = {"docs": [

{
    "location": "#",
    "page": "Home",
    "title": "Home",
    "category": "page",
    "text": ""
},

{
    "location": "#LegendDataTypes.jl-1",
    "page": "Home",
    "title": "LegendDataTypes.jl",
    "category": "section",
    "text": ""
},

{
    "location": "api/#",
    "page": "API",
    "title": "API",
    "category": "page",
    "text": ""
},

{
    "location": "api/#API-1",
    "page": "API",
    "title": "API",
    "category": "section",
    "text": "DocTestSetup  = quote\n    using LegendDataTypes\nend"
},

{
    "location": "api/#Types-1",
    "page": "API",
    "title": "Types",
    "category": "section",
    "text": "Order = [:type]"
},

{
    "location": "api/#Functions-1",
    "page": "API",
    "title": "Functions",
    "category": "section",
    "text": "Order = [:function]"
},

{
    "location": "api/#Base.getindex-Tuple{AbstractLegendInput,AbstractString,Vararg{Any,N} where N}",
    "page": "API",
    "title": "Base.getindex",
    "category": "method",
    "text": "getindex(input::AbstractLegendInput, key::AbstractString)\ngetindex(input::AbstractLegendInput, key::AbstractString, idxs::AbstractVector)\n\nGet object at key from input.\n\n\n\n\n\n"
},

{
    "location": "api/#Base.getindex-Tuple{LegendNullOutput,Any,AbstractString,Vararg{Any,N} where N}",
    "page": "API",
    "title": "Base.getindex",
    "category": "method",
    "text": "setindex!(output::AbstractLegendOutput, key::AbstractString)\ngetindex(output::AbstractLegendOutput, key::AbstractString, idxs::AbstractVector)\n\nGet object at key from input.\n\n\n\n\n\n"
},

{
    "location": "api/#LegendDataTypes.getunits",
    "page": "API",
    "title": "LegendDataTypes.getunits",
    "category": "function",
    "text": "getunits(x)\n\nGet the units of x, falls back to Unitful.unit(x) if no specialized method is defined for the type of x.\n\nLEGEND I/O packages shoud add methods for the I/O-object types they handle.\n\n\n\n\n\n"
},

{
    "location": "api/#LegendDataTypes.readdata",
    "page": "API",
    "title": "LegendDataTypes.readdata",
    "category": "function",
    "text": "readdata(input, SomeDataType::Type)\n\nRead a value of type SomeDataType from input.\n\n\n\n\n\n"
},

{
    "location": "api/#LegendDataTypes.setunits!",
    "page": "API",
    "title": "LegendDataTypes.setunits!",
    "category": "function",
    "text": "setunits!(x)\n\nSet the units of x.\n\nLEGEND I/O packages will need to add methods for the I/O-object types they handle.\n\n\n\n\n\n"
},

{
    "location": "api/#LegendDataTypes.writedata",
    "page": "API",
    "title": "LegendDataTypes.writedata",
    "category": "function",
    "text": "readdata(input, x::SomeDataType)\n\nWrite a value x to output.\n\n\n\n\n\n"
},

{
    "location": "api/#Documentation-1",
    "page": "API",
    "title": "Documentation",
    "category": "section",
    "text": "Modules = [LegendDataTypes]\nOrder = [:type, :function]"
},

{
    "location": "LICENSE/#",
    "page": "LICENSE",
    "title": "LICENSE",
    "category": "page",
    "text": ""
},

{
    "location": "LICENSE/#LICENSE-1",
    "page": "LICENSE",
    "title": "LICENSE",
    "category": "section",
    "text": "using Markdown\nMarkdown.parse_file(joinpath(@__DIR__, \"..\", \"..\", \"LICENSE.md\"))"
},

]}
