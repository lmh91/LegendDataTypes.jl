# This file is a part of LegendDataTypes.jl, licensed under the MIT License (MIT).


struct TypeRegistry{T}
    by_name::IdDict{Symbol,Type{<:T}}
    by_type::IdDict{Type{<:T},Symbol}
end

function TypeRegistry{T}() where T
    TypeRegistry{T}(
        IdDict{Symbol,Type{<:T}}(),
        IdDict{Type{<:T},Symbol}()
    )
end


@noinline Base.getindex(registry::TypeRegistry{T}, name::Symbol) where T =
    registry.by_name[name]

@noinline Base.getindex(registry::TypeRegistry{T}, @nospecialize(U::Type{<:T})) where T =
    registry.by_type[U]


@noinline function Base.setindex!(registry::TypeRegistry{T}, @nospecialize(U::Type{<:T}), name::Symbol) where T
    registry.by_name[name] = U
    registry.by_type[U] = name
end
