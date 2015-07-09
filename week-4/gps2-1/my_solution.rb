
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
#Refactored solution
def print_triangle(rows)
  if rows <= 0
    raise ArgumentError.new("Only non-negative numbers are allowed")
  else
    rows.times {|x| puts "*" * (x+1)}
  end
end
#Reflection
# This gps went really smoothly. We went with Tanya's idea at first and it worked. We then were able to refactor the .times method so it was cleaner and not on so many lines. I haven't used this method that often so it was nice to see it used. For the alternative solution we used my idea of while looping with a counter. We didn't have any issues with the concepts or exercises. We got overly complicated at times digging into refactoring, but i think it was for the best in terms of experience. This was a fun challenge.


