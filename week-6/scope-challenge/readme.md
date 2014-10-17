[Week-6 home](../)

# U2.W6 Variable Scoping

## Learning Competencies
- explain what a properly scoped variable is
- explain the difference between a local, instance, class, constant and global variable.
- explain why it is important to use proper scoping.

## Summary

What is variable scope? This is a concept in computer science which refers to where a variable is able to be accessed or not. To put this is a real world example we can think about levels of confidentiality. Payrolls of government employees are able to be accessed by anyone, so this would be like a `$global` variable. The codes for the nuclear launch are classified under national secrets, only accessible by a few people inside those circles. This could be considered a `local_variable`. Just like in Ruby, you COULD have both of these things be accessible to all people, but it is not a good idea.

Keeping a variable properly scoped prevents other components of your program from modifying the variable, and also helps the name space be clean. That is to say, as a developer, I don't have to worry about creating a variable named the same as another variable some other developer created. If we keep things out of the global scope you can use num or array or any other generic variable name as much as you want without ruining the program. Just as you would not want every person to have access to the nuclear launch codes.

Ruby uses something called block scoping to determine how much reach a local variable has. Meaning that a local variable is only applicable inside the block it is defined in, or blocks created inside the block.

This sounds complicated but it is something you have been using already.

```ruby

def block_method
  # a method is a block
  block_variable = 5
end

def block_method_2
  block_variable_2 = 5
  array.each {|x| puts block_variable_2} # this is another block, you can tell by the curly braces
end

def block_method_3
  array.each do |x| #do..end is also a block, it is synonymous with { }
    block_variable_3 = 5
  end
  puts block_variable_3
end
```
block_variable is accessible inside block_method, but not to block_method_2 or block_method_3.

block_variable_2 is defined OUTSIDE the each method, but you can access it anyway. Ruby can look up for definitions, but not down.

block_variable_3 is defined in the INNER block, so running block_method_3 will give you a undefined variable error(line 39). Ruby would have to look down in the block to find this variable, so it has no idea what you want.

Here are the different types of scope you will find in ruby.

```ruby
CONSTANT = 5
$global = 5
@@class = 5
@instance = 5
local = 5
```
Constant and global are similar, both have global scope, but constant will throw a warning if you try to change the value as the program is running.

**Class vs Instance variables**

@@class variables are variables that exist over ALL INSTANCES of a class.

```ruby
class VariableTest
    @@class_variable = 5
  def show_variable
    @@class_variable
  end
  def show_variable=(num)
    @@class_variable = num
  end
end

p var1 = VariableTest.new
p var2 = VariableTest.new
p var1.show_variable # => 5
p var1.show_variable=10 #=> set @@class_variable to 10

p var1.show_variable #=> var1 instance, outputs 10
p var2.show_variable #=> var2 instance, also outputs 10, even though we have not touched var2

```

class variable are used rarely.

@instance variables are much more common. They are accessible across the instance of the class, but only that instance. Similar to the example above:

```ruby
class VariableTest
    @instance_variable = 5
  def show_variable
    @instance_variable
  end
  def show_variable=(num)
    @instance_variable = num
  end
end

p var1 = VariableTest.new
p var2 = VariableTest.new
p var1.show_variable # => 5
p var1.show_variable=10 #=> set @instance_variable to 10

p var1.show_variable #=> var1 instance, outputs 10
p var2.show_variable #=> var2 instance, outputs 5

```
So to solve the issue of "How do I make a variable accessible to all methods in a class?" A Instance variable is usually the right answer. When the question is "How do I make this variable accessible to ALL instances of the class?" you can use the class variable.


##Release 0: Leveraging the global scope

I set up a situation to show the power of global scope. In the `var_definitions.rb` file you will find a set of definitions of variables in each of the different scopes. In `scope.rb` there are commented out puts statements that call the variables. Uncomment them line by line and run the `scope.rb` file in the terminal. The files are linked using the `require` call on line 1.

What conclusions can you draw from this experiment?

##Release 1: Proper Scoping

All of the scopes in the code of `my_solution.rb` are on the global scope! Change the scoping of the variables so that they are just accessible where they need to be. A method call looks similar to a local variable, can you see where these are?

##Release 2: Refactor old code

Find one of your old code challenges and check your variable scoping. Correct any issues you may find.

Release 3: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

