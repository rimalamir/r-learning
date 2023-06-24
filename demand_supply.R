library(ggplot2)

# Create a dataframe for demand and supply data
price <- c(10, 9, 8, 7, 6, 5)
quantity_demanded <- c(100, 120, 140, 160, 180, 200)
quantity_supplied <- c(150, 130, 110, 90, 70, 50)

df <- data.frame(price, quantity_demanded, quantity_supplied)

                          

# Plotting demand and supply curves with equilibrium point
ggplot(df, aes(x = quantity_demanded, y = price)) +
  geom_line(color = "blue", size = 1) +  # Demand curve
  geom_line(data = df, aes(x = quantity_supplied, y = price), color = "red", size = 1) +  # Supply curve
  labs(title = "Demand and Supply Curves",
       x = "Quantity",
       y = "Price") +
  theme_minimal()
