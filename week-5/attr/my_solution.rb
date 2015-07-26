#U2.W5: Attr Methods

# I worked on this challenge [by myself, with:]

# I spent 1 hour on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Mat"
  end
end

class Greetings
  def initialize
    @new = NameData.new
  end
  def hello
    puts "Hello " + @new.name + "! How wonderful to see you today."
  end
end
greet = Greetings.new
greet.hello


# Reflection
# This exercise was a good practice on seeing how instance variables work across methods and using the attr attributes with it. I forgot to add the @ symbol a few times so that was a good reminder. Using the attr attributes is cool in that it's a nice shortcut to save time. I can see how this can get really complicated so I want to go farther with this and see advanced ways of using the attr attributes. I feel good with the learning competencies in this challenge.