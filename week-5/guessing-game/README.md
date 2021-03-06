[Week 5 Home](../)

# U2.W5: Build a Simple Guessing Game

## Learning Competencies
- Break down problems into implementable pseudocode
- Implement a basic Ruby class and identify when to use instance variables
- Use flow control and iteration where appropriate
- Explain how instance variables and methods represent the characteristics and actions of an object

## Summary

In this challenge you want to create a simple guessing game. Think in terms of when you were 7 and asked your friends to identify the number you were thinking.

Your `GuessingGame` class should be initialized with an integer called `answer`.

Define an instance method `GuessingGame#guess` which takes an integer called `guess` as its input. `guess` should return the symbol `:high` if the `guess` is larger than the `answer`, `:correct` if the `guess` is equal to the `answer`, and `:low` if the `guess` is lower than the `answer`.

Define an instance method `GuessingGame#solved?` which returns `true` if the most recent `guess` was correct and `false` otherwise.

In this case, we're asking you to use symbols for `:low`, `:high`, and `:correct`. This is partly due to the way strings and symbols are stored in memory. If you're interested in more information, look it up!

For example:

```ruby
game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true
```

Or:

```ruby
game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"
```

## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)

## Release 1: [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)

Make sure your code passes the tests before moving on.

## Release 2: Translate the tests

Translate at least 3 of the tests into [Driver Test Code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md) and include it in the driver test code section. If the tests are failing to catch a problem, try writing your own driver test code for it.

## Release 3: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md) your solution

Make sure your code still passes the tests!

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Push your solution to Github

## Release 6: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md) (Optional)
**Optional but HIGHLY encouraged!**
