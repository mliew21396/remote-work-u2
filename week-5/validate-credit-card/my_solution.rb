# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge Amrita.
# I spent 2 hours on this challenge.

# 2. Pseudocode

# Input:integer
# Output:boolean
# Steps:
# Create initialize method to create instance variable number
  # Place conditional ArgumentError in initialize method
# Create check_card method to change @number
  # Split integer into array
  # Double every odd number
  # Convert to string and split again into array
  # Sum the results
  # If divisible by 10, return true else false


# 3. Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  @sum = 0
  def initialize(number)
    @number = number
    if @number.to_s.length != 16
      raise ArgumentError.new("Not a valid card number")
    end
  end

  def check_card
    @number=@number.to_s
    @number=@number.split(//)
    @number=@number.each{|s| s.to_i}
    count = 0
    while count <= @number.size
      @number[count]=@number[count].to_i*2
      count +=2
    end
    @number=@number.join#give us string
    @number=@number.split(//).map{|s| s.to_i}
    @sum=@number.inject{|sum, result| sum+=result}
    if @sum % 10 == 0
      return true
    else
      return false
    end
  end
end

# 4. Refactored Solution
class CreditCard
  def initialize(number)
    @number = number
    if @number.to_s.length != 16
      raise ArgumentError.new("Not a valid card number")
    end
  end

  def check_card
    sum = 0
    @number=@number.to_s.split(//).each{|s| s.to_i}
    count = 0
    while count <= @number.size
      @number[count]=@number[count].to_i*2
      count +=2
    end
    sum=@number.join.split(//).map{|s| s.to_i}.inject{|sum, result| sum+=result}
    sum % 10 === 0
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
p CreditCard.new(4563960122001999).check_card == true
p CreditCard.new(4408041234567901).check_card == true
p CreditCard.new(4408041234567906).check_card == false

# 5. Reflection
# This challenge was tricky in that there was a lot of type conversions - aka among string, array, and integer. Amrita and I had the general idea on how to do this challenge, but had some hurdles in terms of coversion and using the correct syntax to properly use the correct methods. I liked this challenge because I had to be really familiar with the correct syntax as well as researching ruby docs thoroughly. It felt like a summary project to check my complete understanding.