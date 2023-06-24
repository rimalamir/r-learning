library(leaflet)

# Sample data
data <- data.frame(
  City = c("Kathmandu", "Pokhara", "Biratnagar"),
  Lat = c(27.7172, 28.2096, 26.4562),
  Lon = c(85.3240, 83.9856, 87.2727)
)

# Create an interactive map
leaflet(data) %>%
  addTiles() %>%
  addMarkers(popup = ~City)
