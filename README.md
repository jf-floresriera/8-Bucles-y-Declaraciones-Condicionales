# Bucles-y-Declaraciones-Condicionales

Repositorio de la tarea 8 del curso **Programación SIG 2026**.  
El objetivo es implementar y documentar ejercicios sobre bucles (`for`, `while`) y declaraciones condicionales (`if`, `elif`, `else`) usando Python, R y Julia.

---

## Contenido del repositorio

- `Bucles_Condicionales.qmd`  
  Documento Quarto con el desarrollo completo de los ejercicios, código en Python y reflexiones sobre:
  - Indentación y bloques en Python vs R y Julia.
  - Riesgo de ciclos infinitos en `while` frente a `for`.
  - Uso correcto de operadores lógicos escalares y vectorizados.

- `Bucles_Condicionales.html`  
  Versión HTML renderizada del documento Quarto.

- `Bucles_Condicionales.pdf`  
  Versión PDF generada a partir del `.qmd`.

- `Bubles_declaraciones_PHYTHON.py`  
  Script tradicional en Python con la solución de los ejercicios:
  - Ejercicio 1: Clasificación de fincas por altitud (ciclo `for` + `if-else`).
  - Ejercicio 2: Monitoreo del nivel del río Magdalena (ciclo `while` + bandera lógica).

- `Bucles_declaraciones_R.R`  
  Implementación equivalente de los ejercicios en R.

- `Bucles_declaraciones_JULIA.jl`  
  Implementación equivalente de los ejercicios en Julia.

---

## Descripción de los ejercicios

### Ejercicio 1 – Clasificación iterativa

Contexto: zonificación agrícola en el Eje Cafetero.  
Se recibe una lista de altitudes de fincas y se clasifican en dos grupos:

- **Café de especialidad**: alturas entre 1700 y 2200 msnm.  
- **Café tradicional**: resto de altitudes.

El programa:

1. Recorre la lista con un ciclo `for`.  
2. Evalúa cada altitud con una condición `if-else` usando operadores lógicos AND.  
3. Cuenta cuántas fincas quedan en cada categoría y almacena las altitudes en colecciones separadas.  
4. Imprime un reporte final con los conteos y las listas resultantes.

### Ejercicio 2 – Monitoreo de sensores

Contexto: estación hidrológica en el Río Magdalena.  
Se simulan lecturas del nivel del agua y se controla el flujo del programa con un ciclo `while`.

El programa:

1. Genera lecturas aleatorias entre 5.0 y 9.0 metros.  
2. Incrementa un contador de intentos hasta un máximo de 12 lecturas.  
3. Si el nivel supera 8.5 metros:
   - Activa una bandera `alerta_inundacion`.
   - Muestra un mensaje de **ALERTA ROJA**.
   - Rompe el ciclo con `break`.  
4. Si el ciclo termina sin alerta, muestra el mensaje de “Niveles estables”.

---

## Cómo reproducir el documento Quarto

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/tu_usuario/8-Bucles-y-Declaraciones-Condicionales.git
   cd 8-Bucles-y-Declaraciones-Condicionales
Renderizar el .qmd (requiere Quarto y Python instalados):

bash
quarto render Bucles_Condicionales.qmd
Los archivos Bucles_Condicionales.html y Bucles_Condicionales.pdf se generarán en la misma carpeta.

Autor
Nombre: J.E. Flores-Riera

Correo: jfloresr@unal.edu.co
