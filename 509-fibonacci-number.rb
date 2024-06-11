require 'debug'

# Define a method named fibonacci which takes a number n as its parameter
def fibonacci(num)

  # Base case: If n is 0 or 1, return n directly
  # This is because the first two numbers of the Fibonacci sequence are defined as 0 and 1
  return num if num <= 1

  # Recursive case: If n is greater than 1, return the sum of the fibonacci of (n-1) and (n-2)
  # This line calls the fibonacci method itself with the two preceding numbers until it reaches the base case
  fibonacci(num-1) + fibonacci(num-2)
end

# Call the fibonacci method with 5 and print the result
# This will print "5" to the console, as fibonacci(5) calculates the 5th number in the Fibonacci sequence

puts fibonacci(15)
