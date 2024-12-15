library(httr)
library(jsonlite)

# URL de la API de Weatherstack con la clave API y la ciudad de New York
url <- "http://api.weatherstack.com/current?access_key=d734a05e5698a9d4306cb0c90fb16e99&query=New%20York"

# Realizar la solicitud GET a la API
respuesta <- GET(url)

# Verificar el código de estado HTTP (200 significa que la solicitud fue exitosa)
if (status_code(respuesta) == 200) {
  # Convertir el contenido de la respuesta en formato JSON a un dataframe
  datos_json <- content(respuesta, "text")
  datos_clima <- fromJSON(datos_json)
  
  # Mostrar los primeros datos relevantes del clima
  print(paste("Ciudad:", datos_clima$location$name))
  print(paste("Temperatura:", datos_clima$current$temperature, "°C"))
  print(paste("Condición del clima:", datos_clima$current$weather_descriptions[1]))
  print(paste("Humedad:", datos_clima$current$humidity, "%"))
  print(paste("Viento:", datos_clima$current$wind_speed, "km/h"))
} else {
  print("Error en la solicitud a la API")
}