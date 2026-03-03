# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .jl
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.1
#   kernelspec:
#     display_name: Julia 1.10
#     language: julia
#     name: julia-1.10
# ---

# %%
# Altitudes de las fincas (msnm)
altitudes_fincas = [1350, 1750, 1900, 2300, 1600, 2100]

# Contadores (Int)
conteo_especial = 0
conteo_tradicional = 0

# Colecciones (Vector{Int})
fincas_especiales = Int[]
fincas_tradicionales = Int[]

# Clasificación iterativa
for alt in altitudes_fincas
    if 1700 <= alt <= 2200
        push!(fincas_especiales, alt)
        conteo_especial += 1
    else
        push!(fincas_tradicionales, alt)
        conteo_tradicional += 1
    end
end

# Reporte final
println("--- REPORTE DE FINCAS (EJE CAFETERO) ---")
println("Fincas de café de especialidad: ", conteo_especial)
println("Altitudes especiales: ", fincas_especiales)
println("Fincas de café tradicional: ", conteo_tradicional)
println("Altitudes tradicionales: ", fincas_tradicionales)


# %%
using Random

Random.seed!(123)  # opcional

nivel_alerta = 8.5
max_lecturas = 12
lectura_actual = 0
alerta_inundacion = false

println("--- Monitoreo Río Magdalena (hasta $max_lecturas lecturas) ---")

while lectura_actual < max_lecturas
    nivel = rand() * (9.0 - 5.0) + 5.0   # uniforme entre 5.0 y 9.0
    lectura_actual += 1
    println("Lectura $(lectura_actual): nivel = $(round(nivel, digits=2)) m")

    if nivel >= nivel_alerta
        alerta_inundacion = true
        println("¡ALERTA ROJA! Posible desbordamiento.")
        break
    end
end

if !alerta_inundacion
    println("Monitoreo finalizado. Niveles estables.")
end

