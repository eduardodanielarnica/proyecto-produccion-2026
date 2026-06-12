# ==============================================================================
# Proyecto Integrador: Producción 2026
# Script: Análisis Descriptivo Inicial
# Autor: Eduardo Daniel Árnica
# ==============================================================================

# 1. LIMPIEZA DEL ENTORNO
# Se limpia la memoria y se cierran gráficos abiertos para empezar desde cero.
rm(list = ls())
graphics.off()

# 2. CARGA DE LIBRERÍAS
# Utilizamos ggplot2, el estándar de la industria para visualización en R.
library(ggplot2)

# 3. CARGA DEL DATASET
# Se lee el archivo desde la ruta organizada.
# Asegúrate de establecer tu directorio de trabajo en la carpeta raíz del proyecto.
datos <- read.csv("data/datos_produccion_2026.csv", stringsAsFactors = FALSE)

# 4. INSPECCIÓN DE ESTRUCTURA
# Pasos críticos para entender con qué datos estamos trabajando.
print("Nombre de las columnas:")
print(colnames(datos))
print("Resumen estadístico:")
summary(datos)

# 5. VISUALIZACIÓN GRÁFICA (Tarea 1)
# Creamos un histograma para ver la distribución de los costos de producción.
ggplot(data = datos, aes(x = costo_produccion)) +
  geom_histogram(fill = "steelblue", color = "white", bins = 5) + # Personalización de estética
  labs(title = "Distribución de Costos de Producción", 
       subtitle = "Análisis exploratorio inicial - Módulo 1",
       x = "Costo de Producción (en unidades monetarias)", 
       y = "Frecuencia") +
  theme_minimal() # Tema limpio para presentación profesional
