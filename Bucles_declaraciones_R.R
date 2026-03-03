# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .R
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.1
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# %%
# Altitudes de las fincas (msnm)
altitudes_fincas <- c(1350, 1750, 1900, 2300, 1600, 2100)

# Contadores
conteo_especial <- 0
conteo_tradicional <- 0

# Colecciones
fincas_especiales <- c()
fincas_tradicionales <- c()

# Clasificación iterativa
for (alt in altitudes_fincas) {
  if (alt >= 1700 && alt <= 2200) {
    fincas_especiales <- c(fincas_especiales, alt)
    conteo_especial <- conteo_especial + 1
  } else {
    fincas_tradicionales <- c(fincas_tradicionales, alt)
    conteo_tradicional <- conteo_tradicional + 1
  }
}

# Reporte final
cat("--- REPORTE DE FINCAS (EJE CAFETERO) ---\n")
cat("Fincas de café de especialidad:", conteo_especial, "\n")
cat("Altitudes especiales:", fincas_especiales, "\n")
cat("Fincas de café tradicional:", conteo_tradicional, "\n")
cat("Altitudes tradicionales:", fincas_tradicionales, "\n")


# %%
set.seed(123)  # opcional para reproducibilidad

nivel_alerta <- 8.5
max_lecturas <- 12
lectura_actual <- 0
alerta_inundacion <- FALSE

cat("--- Monitoreo Río Magdalena (hasta", max_lecturas, "lecturas) ---\n")

while (lectura_actual < max_lecturas) {
  nivel <- runif(1, min = 5.0, max = 9.0)
  lectura_actual <- lectura_actual + 1
  cat(sprintf("Lectura %d: nivel = %.2f m\n", lectura_actual, nivel))

  if (nivel >= nivel_alerta) {
    alerta_inundacion <- TRUE
    cat("¡ALERTA ROJA! Posible desbordamiento.\n")
    break
  }
}

# Evaluación final
if (!alerta_inundacion) {
  cat("Monitoreo finalizado. Niveles estables.\n")
}


# %%
