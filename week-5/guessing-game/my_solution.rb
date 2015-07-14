# U2.W5: Build a simple guessing game


# I worked on this challenge by myself.
# I spent 0.5 hours on this challenge.

# 2. Pseudocode

# Input: an integer value called answer and an integer value called guess
# Output: for the method guess, :low, :high, or :correct; for the method solved, a boolean value of true or false
# Steps:
# Create an initialize method with an answer integer as an instance variable.
# Create an instance method called guess which takes a guess integer and creates an instance variable from that. It then compares it with the answer instance variable, using a conditional to return if the guess is :low, :high, or :correct.
# Create  a solved method that returns true if the most recent guess is correct or else false

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end
  def solved?
    if @guess == @answer
      return true
  else
    return false
    end
  end
end

# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end
  def solved?
    @guess == @answer ? true: false
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
game1 = GuessingGame.new(10)
p game1.solved? == false
p game1.guess(5) == :low
p game1.guess(20) == :high
p game1.solved? == false
p game1.guess(10) == :correct
p game1.solved? == true

# 5. Reflection
# This challenge was straightforward. The new concept here was having an argument for an instance method while also having an initialize variable. I had to decide where to puth the @guess variable but figured the easiest would just be on the method. I had to double check how instance variables checked online, but it quickly made sense. I feel good having multiple argument within a class. I liked this challenge such I'm still rough with class structuring.