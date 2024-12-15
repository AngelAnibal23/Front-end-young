library(rvest)
# URL de la página web
url <- "https://www.bbc.com/mundo/topics/c7zp57yyz25t"
# Leer el contenido de la página
pagina <- read_html(url)
# Usar XPath para extraer titulares principales
titulares <- pagina %>%
                    
  html_nodes(xpath = "//*[@id=\"main-wrapper\"]/div/main/div/div[2]/ul/li/div/div[2]/h2/a/text()") %>%
  html_text()

# Mostrar los primeros titulares extraídos
print(titulares[1:10])
