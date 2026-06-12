# ==============================================================================
# SCRIPT FINAL Y A PRUEBA DE TODO PARA LA ENTREVISTA
# ==============================================================================
library(ggplot2)

# 1. CARGA INTERACTIVA
archivo <- file.choose()

# 2. CARGA INTELIGENTE (Detecta si el archivo usa ',' o ';')
# Usamos read.table que permite especificar el separador con mucha precisión
datos <- read.table(archivo, header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Si esto no funciona, es porque el separador es ';'
if(ncol(datos) == 1) {
  datos <- read.table(archivo, header = TRUE, sep = ";", stringsAsFactors = FALSE)
}

# 3. VERIFICACIÓN CRÍTICA
print("Estructura detectada (debes ver 5 variables):")
str(datos)

# 4. VISUALIZACIÓN PROFESIONAL
# Aseguramos que la columna sea numérica antes de graficar
datos$costo_produccion <- as.numeric(as.character(datos$costo_produccion))

ggplot(data = datos, aes(x = costo_produccion)) +
  geom_histogram(fill = "steelblue", color = "white", bins = 5) +
  labs(title = "Distribución de Costos de Producción",
       subtitle = "Análisis exploratorio: Visualización de lotes",
       x = "Costo de Producción (USD)",
       y = "Frecuencia") +
  theme_minimal()
