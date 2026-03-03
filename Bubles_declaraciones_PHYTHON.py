# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.1
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %%
# Altitudes de las fincas (msnm)
altitudes_fincas = [1350, 1750, 1900, 2300, 1600, 2100]

# Contadores
conteo_especial = 0
conteo_tradicional = 0

# Colecciones
fincas_especiales = []
fincas_tradicionales = []

# Clasificación iterativa
for alt in altitudes_fincas:
    if 1700 <= alt <= 2200:   # condición para café de especialidad
        fincas_especiales.append(alt)
        conteo_especial += 1
    else:
        fincas_tradicionales.append(alt)
        conteo_tradicional += 1

# Reporte final
print("--- REPORTE DE FINCAS (EJE CAFETERO) ---")
print(f"Fincas de café de especialidad: {conteo_especial}")
print(f"Altitudes especiales: {fincas_especiales}")
print(f"Fincas de café tradicional: {conteo_tradicional}")
print(f"Altitudes tradicionales: {fincas_tradicionales}")


# %%
import random

nivel_alerta = 8.5
max_lecturas = 12
lectura_actual = 0
alerta_inundacion = False

print(f"--- Monitoreo Río Magdalena (hasta {max_lecturas} lecturas) ---")

while lectura_actual < max_lecturas:
    nivel = random.uniform(5.0, 9.0)
    lectura_actual += 1
    print(f"Lectura {lectura_actual}: nivel = {nivel:.2f} m")

    if nivel >= nivel_alerta:
        alerta_inundacion = True
        print("¡ALERTA ROJA! Posible desbordamiento.")
        break

# Evaluación final
if not alerta_inundacion:
    print("Monitoreo finalizado. Niveles estables.")


# %%
