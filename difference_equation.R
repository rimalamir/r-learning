# Define the difference equation: y(t) = a * y(t-1) + b * x(t)
a <- 0
b <- 110

# Generate input and output data
T <- 100  # Number of time steps
x <- rnorm(T)  # Random input values
y <- numeric(T)  # Initialize output vector
y[1] <- 1  # Initial output value

# Calculate output values based on the difference equation
for (t in 2:T) {
  y[t] <- a * y[t-1] + b * x[t]
}

# Plot the input and output data
plot(y, type = "l", col = "blue", xlab = "Time", ylab = "y(t)", main = "Difference Equation")
lines(x, col = "red")
legend("topright", legend = c("y(t)", "x(t)"), col = c("blue", "red"), lty = 1)
