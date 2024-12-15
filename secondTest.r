library(rvest)

# URL con la tabla
url <- "https://www.worldometers.info/world-population/population-by-country/"

# Leer el contenido de la página web
pagina <- read_html(url)

# Extraer las tablas de la página (html_table convierte automáticamente)
tablas <- pagina %>% html_table(fill = TRUE)

# Seleccionar la primera tabla (si hay más de una)
tabla_poblacion <- tablas[[1]]

# Mostrar los primeros registros de la tabla
print(head(tabla_poblacion))



