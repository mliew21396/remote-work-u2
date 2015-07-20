# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent 1 hours on this challenge.

# 2. Pseudocode

# Input: array of strings
# Output: for sides, number of sides; for roll, random value from array
# Steps:
# Create initialize method to get the class variables for array length and array. Also, give an error if side array/length is not greater than 0
# Sides returns the number of sides
# Roll chooses a random value from the range of die sides and all of that is wrapped by the array selector

# 3. Initial Solution

class Die
  def initialize(array)
    @die_sides = array.length
    @array = array
      raise ArgumentError.new("Only numbers greater than zero") if @die_sides < 1
  end
  def sides
    return @die_sides
  end
  def roll
    return @array[rand(@die_sides)]
  end
end


# 4. Refactored Solution

class Die
  def initialize(array)
    @die_sides = array.length
    @array = array
      raise ArgumentError.new("Only numbers greater than zero") if @die_sides < 1
  end
  def sides
    @die_sides
  end
  def roll
    @array[rand(@die_sides)]
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
die1 = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die1.roll == 'A' || 'B' || 'C' || 'D' || 'E' || 'F'
p die1.sides == 6
# die2 = Die.new([])
#Raises error



# 5. Reflection
# This challenge was pretty straightforward - learning how instances can be called among methods. I was able to create an instance variable array that could be called in all the methods of my class. I then created tests that return a boolean value for a simple rspec. I liked this challenge because it was easy from first impression but deeper than that.