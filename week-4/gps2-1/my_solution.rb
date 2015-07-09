
# U2.W4: Pretty Triangle GPS 2.1

# I worked on this challenge with: Tanya.

# I spent 0.75 hours on this challenge.

# Pseudocode
# Input: integer argument
# Output: a right triangle using asterisk(s) in rows, lower integer to higher integer
# Steps
# 1. Initialize a counter, to count through the integer rows
# 2. puts to print asterisks out to screen


# Initial Solution
#Solution 1
def print_triangle(rows)
  if rows <= 0
    raise ArgumentError.new("Only non-negative numbers are allowed")
  else
    rows.times {|x| puts "*" * (x+1)}
  end
end

# rows.times do ||
#   puts "*" * (rows-i)
#     i -= 1
# end

#Solution 2
# def print_triangle(rows)
#   unless rows > 0
#     raise ArgumentError.new("Only non-negative numbers are allowed")
#   end
#   counter = 1
#   while counter <= rows
#     puts "*" * counter
#     counter += 1
#   end
# end


print_triangle(5)




