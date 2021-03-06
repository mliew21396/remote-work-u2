[Week 4 Home](../)

# U2.W4: Print a Pretty Right Triangle

**This is a Guided Pairing Session challenge for Unit 2. Please do not look at the challenge until your Guided Pairing Session.**

## Learning Competencies
- Outline logic to solve a problem using pseudocode
- Implement a method based on pseudocode
- Define a method that accepts and uses arguments
- Use an iterator to output the correct number of asterisks on the console
- Conform to Ruby style conventions
- Use mathematical operators in Ruby
- Use tests to guide development
- Iterate over arrays
- Explain the difference between `puts`, `p`, and `return`
- Research and implement an `ArgumentError` (Optional)
- Research and use a built-in Ruby method to solve the problem

## Summary
In this challenge, you and your pair will build a `print_triangle` method that takes an integer as an argument. The integer represents the number of rows to print. The method should print a right triangle consisting of `*` characters. Each line should consist of one asterisk times the row it's on.

For example, `print_triangle(5)` should print:

```text
*
**
***
****
*****
```

And `print_triangle(2)` should print out:

```text
*
**
```

If a negative number or `0` is passed as an argument, the method should not print anything (not even an empty line).

## Releases

## Release 0: Pseudocode
Consider what you need to do to solve the challenge with your pair. Write this down as [pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md) in your solution file.

If you are unsure what pseudocode is, discuss it with your pair first.

## Release 1: Initial Solution
Convert your pseudocode into a working solution in the [my_solution.rb](my_solution.rb) file.

Be sure to call your methods in the my_solution file and run them in your terminal to see what is happening.

## Release 2: Test
Run the tests to make sure your code passes.

## Release 3: Refactor
With your pair, think about ways to refactor this code. Is it readable? Would a new person be able to understand your solution quickly if they were to glance at it now?

Make sure all the tests pass before moving on.

## Release 4: Returning values
What does this method return? Explain your understanding of what `puts`, `print`, `p`, and `return` do.

## Release 5: Add an `ArgumentError`
Instead of printing nothing for "0" or a negative number, research and implement an `ArgumentError`.

You'll need to comment out the test that checks nothing is printed for a "0" in the RSpec file and uncomment the commented tests to test this.

## Release 6: Solve the problem another way
Go into the Ruby Docs and solve the problem again using a new method. Then go through Release 2 and 3 again.

If you have more time, repeat this release and find another way to do it!

## Release 7: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

When you are finished with the challenge, reflect on the process with your pair. Write your reflection in the reflection section of the [my_solution.rb](my_solution.rb) file.

## Release 8: Submit Feedback for your Pair
After your pairing session is over, submit feedback on [Feedbackinator](https://socrates.devbootcamp.com/feedback/new).

## Release 8: Submit your challenge!
Push your solution to GitHub in the [my_solution.rb](my_solution.rb) file. Remember to include your pair's name!
