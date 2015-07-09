# U2.W4: Die Class 1: Numeric

# I worked on this challenge with Laura.

# I spent .5 hours on this challenge.

# 0. Pseudocode

# Input: integer
# Output: integer for sides, random integer for roll
# Steps:
# Initialize a class variable for sides
# Defining a sides method that returns number of sides
# Defining a roll method that returns random number between 1 and 6


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @die_sides = sides
#     if @die_sides < 1
#       raise ArgumentError.new("Only numbers greater than zero")
#     end
#   end

#   def sides
#     return @die_sides
#   end

#   def roll
#     return 1 + rand(@die_sides)
#   end
# end



# 3. Refactored Solution
class Die
  def initialize(sides)
    @die_sides = sides
      raise ArgumentError.new("Only numbers greater than zero") if @die_sides < 1
  end
  def sides
    return @die_sides
  end
  def roll
    return 1 + rand(@die_sides)
  end
end

# puts Die.new(6).roll

# 4. Reflection
# This challenge was straightforward. We were creating a class and learning how instance objects can work among different methods. It was cool learning about the initialize method for future reference. I can see the different types of variables, eg local, instance, class, and global, being tricky when working in an object-oriented mindset and want more practice. The concept is still a little foreign to me. I feel good on what this exercise covered and it was fun/quick to do with Laura.