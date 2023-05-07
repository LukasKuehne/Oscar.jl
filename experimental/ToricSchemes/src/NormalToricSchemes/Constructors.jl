###############################
### 1: General constructor
###############################



###############################
### 2: Special constructors
###############################

@doc raw"""
    affine_space(::Type{ToricCoveredScheme}, d::Int; set_attributes::Bool = true)

Constructs the affine space of dimension `d` as toric (covered) scheme.

# Examples
```jldoctest
julia> affine_space(ToricCoveredScheme, 2)
Scheme of a toric variety with fan spanned by RayVector{QQFieldElem}[[1, 0], [0, 1]]
```
"""
affine_space(::Type{ToricCoveredScheme}, d::Int; set_attributes::Bool = true) = ToricCoveredScheme(affine_space(NormalToricVariety, d; set_attributes = set_attributes))


@doc raw"""
    projective_space(::Type{ToricCoveredScheme}, d::Int; set_attributes::Bool = true)

Construct the projective space of dimension `d` as toric (covered) scheme.

# Examples
```jldoctest
julia> projective_space(ToricCoveredScheme, 2)
Scheme of a toric variety with fan spanned by RayVector{QQFieldElem}[[1, 0], [0, 1], [-1, -1]]
```
"""
projective_space(::Type{ToricCoveredScheme}, d::Int; set_attributes::Bool = true) = ToricCoveredScheme(projective_space(NormalToricVariety, d; set_attributes = set_attributes))


@doc raw"""
    weighted_projective_space(::Type{ToricCoveredScheme}, w::Vector{T}; set_attributes::Bool = true) where {T <: IntegerUnion}

Construct the weighted projective space corresponding to the weights `w` as toric (covered) scheme.

# Examples
```jldoctest
julia> weighted_projective_space(ToricCoveredScheme, [2,3,1])
Scheme of a toric variety with fan spanned by RayVector{QQFieldElem}[[-1, 1//3], [1, -1//2], [0, 1]]
```
"""
weighted_projective_space(::Type{ToricCoveredScheme}, w::Vector{T}; set_attributes::Bool = true) where {T <: IntegerUnion} = ToricCoveredScheme(weighted_projective_space(NormalToricVariety, w; set_attributes = set_attributes))


@doc raw"""
    hirzebruch_surface(::Type{ToricCoveredScheme}, r::Int; set_attributes::Bool = true)

Constructs the r-th Hirzebruch surface as toric (covered) scheme.

# Examples
```jldoctest
julia> hirzebruch_surface(ToricCoveredScheme, 5)
Scheme of a toric variety with fan spanned by RayVector{QQFieldElem}[[1, 0], [0, 1], [-1, 5], [0, -1]]
```
"""
hirzebruch_surface(::Type{ToricCoveredScheme}, r::Int; set_attributes::Bool = true) = ToricCoveredScheme(hirzebruch_surface(r; set_attributes = set_attributes))


@doc raw"""
    del_pezzo_surface(::Type{ToricCoveredScheme}, b::Int; set_attributes::Bool = true)

Constructs the del Pezzo surface with `b` blowups for `b` at most 3 as toric (covered) scheme.

# Examples
```jldoctest
julia> del_pezzo_surface(ToricCoveredScheme, 3)
Scheme of a toric variety with fan spanned by RayVector{QQFieldElem}[[1, 0], [0, 1], [-1, -1], [1, 1], [0, -1], [-1, 0]]
```
"""
del_pezzo_surface(::Type{ToricCoveredScheme}, b::Int; set_attributes::Bool = true) = ToricCoveredScheme(del_pezzo_surface(b; set_attributes = set_attributes))