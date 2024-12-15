# Cargar la biblioteca
library(rvest)

# URL de la página web
url <- "https://www.amazon.com/s?k=laptops"

# Leer el contenido de la página
pagina <- read_html(url)

# Usar CSS Selectors para extraer precios de los productos
precios <- pagina %>%
  html_nodes(".a-price-whole") %>%  # Seleccionar los elementos con la clase 'a-price-whole'
  html_text() %>%
  gsub(",", "", .) %>%             # Eliminar comas de los precios
  as.numeric()                     # Convertir a numérico

# Mostrar los primeros precios extraídos
print(precios[1:5])
