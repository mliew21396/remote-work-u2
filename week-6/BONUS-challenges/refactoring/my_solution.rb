# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.



# Original Solution

class CreditCard
  def initialize(num)
    unless (num.to_s).length == 16
      raise ArgumentError.new("Please enter a 6 digit number")
    end
    @num = num.to_s
    p @num
  end

  def step_one
    first = @num.split("")
    first = first.map do |x|
      x.to_i
    end
    count = 1
    result = first.map do |x|
      x = x*2 unless count % 2 == 0
      count+= 1
      x
    end
   result
  end

  def step_two
    @second = ""
    another = step_one
    another.each do |x|
      @second = @second + x.to_s
    end
    @second = @second.split("")
    result = 0
    @second = @second.map do |x|
      x.to_i
    end
    @second.each do |x|
      result = result + x
    end
    result
  end

  def check_card
    step_two % 10 == 0
  end
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE






# Reflection