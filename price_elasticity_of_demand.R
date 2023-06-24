if (!require(ggplot2)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Generate data for demand curve
price <- seq(1, 10, by = 1)  # Price range
quantity <- 100 - 5 * price   # Demand curve equation (inverse relationship)

# Calculate price elasticity of demand
elasticity <- abs((quantity / price) * (1 / -5))

# Create a dataframe
df <- data.frame(price, quantity, elasticity)

# Plotting the demand curve with price elasticity
ggplot(df, aes(x = quantity, y = price)) +
  geom_line(color = "blue", size = 1) +
  geom_point(aes(color = elasticity, size = elasticity)) +
  labs(title = "Demand Curve with Price Elasticity",
       x = "Quantity Demanded",
       y = "Price",
       color = "Elasticity",
       size = "Elasticity") +
  scale_color_gradient(low = "green", high = "red") +
  theme_minimal()
