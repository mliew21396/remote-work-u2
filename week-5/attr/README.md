[Week 5](../)

# U2.W5: attr_ attributes

## Learning Competencies
  - Explain `attr_reader`, `attr_writer`, and `attr_accessor`
  - Describe getter and setter methods
  - Use the attr_ methods to simplify your code and pass data between classes

## Summary

You may have run across `attr_reader`/`writer`/`accessor` methods in Ruby code before under class declaration. Instead of considering these to be "magic" methods, we aim to show you what's being done "under the hood" when you invoke these methods.

When we talk about attr_ attributes we are really talking about getter and setter methods. You can read about these in the *Well-Grounded Rubyist* in Chapter 3.

`attr_reader` is a getter which means that it just returns a value or state outside of the class, but does not change it.

`attr_writer` is a setter which means that you can change the value of the variable outside of the class, but it is not readable.

`attr_accessor` is both a getter and a setter. We can now return and change the value of the variable.

So knowing this, why not just make everything `attr_accessor`? Having all instance variables changeable when we really just want them read could lead to difficult debugging problems down the line. It is a safeguard against accidentally giving other methods and classes too much access to the inner workings of others. Read *Practical Obect-Oriented Design in Ruby* if you want to learn more about the basics of software architecture.

## Release 0: Read and Research

Open the [release_0.rb](release_0.rb) and read the code and especially the comments. Is there anything that you see that you do not understand? Look up or ask questions about anything unfamiliar.

Run the code. Do you notice what is changing?

## Release 1: Identify the changes

Open [release_1.rb](release_1.rb) after you finished the instructions for release0.rb. Read the comments and code. Do you notice where the code changed from the last release?

## Release 2: More changes

Open [release_2.rb](release_2.rb) and look at the code. Read the comments and notice where the code changed. All outputs should be the same between all releases even though we are changing the format of our code.

## Release 3: Finally using attr

Open [release_3.rb](release_3.rb) like the others. We now added the `attr_accessor` declaration. Notice how we reduced superfluous code.

## Release 4: Finish refactoring

Go to [release_4.rb](release_4.rb). Finish refactoring the code to make the best use of the `attr_` attributes methods.

## Release 5: Apply

Attr methods are a great way to have classes communicate data kept in instance variables. For example, if I had a class `Tree`, that had a `name` stored in an instance variable, I could do access that information using the following:

```ruby

class Tree

  attr_reader :name

  def initialize(plant_name)
    @name = plant_name
  end

end

my_tree = Tree.new("Japanese Maple")
my_tree.name #=> "Japanese Maple"
```

We can also access this data in other classes. For example:

```ruby
class Garden

  attr_reader :plants

  def initialize
    @plants = []
  end

  def add(plant)
    @plants << plant
  end

end

my_garden = Garden.new
my_tree = Tree.new("Japanese Maple")
my_garden.add(my_tree)
my_garden.plants.each { |plant| puts plant.name } #=> "Japanese Maple"
```


Until now, you have probably only created classes inside driver code. It is important to know that you are able to create instances of a class inside another class. The following example demonstrates creating the `Emitter` class inside the `Receiver` class. This gives `Receiver` access to the data inside `important_method`.

```ruby
class Emitter
  def important_method
    return 5
  end
end

class Receiver
  def initialize
    @emitter = Emitter.new
  end

  def use_data
    puts @emitter.important_method + 5
  end
end

receiver = Receiver.new
receiver.use_data #=> 10

```

It's time for you to practice sending data between classes (like we did above) with a small example.

You will have 2 classes, `NameData` and `Greetings`. `NameData` will initialize a `@name` variable with your name. `Greetings` will initialize an instance of `NameData` and include a method to display a salutation to the console.


It should look something like this:

```ruby
greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."
```


**Note:** please do not use global variables or inheritance to do this, stick with applying the attr_ methods.

## Release 6: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 7: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md)
**Optional but HIGHLY encouraged!**
