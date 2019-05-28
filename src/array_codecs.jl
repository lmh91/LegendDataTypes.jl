# This file is a part of LegendDataTypes.jl, licensed under the MIT License (MIT).


"""
    read_from_properties(read_property::Function, src::Any, ::Type{T}) where {T<:AbstractArrayCodec}

Create a array codec of type `T` from properties of `src`, using the
`src`-specific function `read_property(src, name::Symbol, default_value)` to
read each property required.

Returns an value of type `T`.
"""
function read_from_properties end


"""
    write_to_properties!(write_property!::Function, dest::Any, codec::AbstractArrayCodec)

Write all information required to re-create `codec` to `dest` using thes
`dest`-specific function `write_property!(dest, name::Symbol, x)`.

Typically returns `nothing`.
"""
function to_properties end



function read_from_properties(read_property::Function, src::Any, ::Type{VarlenDiffArrayCodec})
    VarlenDiffArrayCodec()
end


function write_to_properties!(write_property!::Function, dest::Any, codec::VarlenDiffArrayCodec)
    nothing
end
