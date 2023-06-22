# Function to add two numbers
add_numbers <- function(a, b) {
  sum <- a + b
  return(sum)
}

# Get command-line arguments
args <- commandArgs(trailingOnly = TRUE)

# Check if two arguments were provided
if (length(args) != 2) {
  cat("Please provide exactly two numbers as command-line arguments.")
  quit(status = 1)
}

# Convert arguments to numeric values
num1 <- as.numeric(args[1])
num2 <- as.numeric(args[2])

# Check if arguments are valid numbers
if (anyNA(num1, num2)) {
  cat("Invalid number(s) provided.")
  quit(status = 1)
}

# Call the add_numbers function
result <- add_numbers(num1, num2)
cat("The sum of", num1, "and", num2, "is:", result, "\n")
