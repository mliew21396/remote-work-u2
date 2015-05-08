[Week 5 Home](../)

# U2.W5: A Nested Array to Model a Bingo Board [Solo Challenge](https://github.com/Devbootcamp/phase-0-handbook/blob/master/solo-challenges.md)

## Learning Competencies
- Break down problems into implementable pseudocode that stays away from code-specific syntax
- Implement a class based on pseudocode
- Access coordinates in a 2d array
- Create a method to access rows and columns
- Use a logical method of altering data
- Use built-in Ruby methods to simplify code when appropriate
- Use appropriate scoping of variables
- Refactor initial solution to make it more readable and concise
- Reflect on the process

## Summary

Bingo is a great real world example to demonstrate your new knowledge of nested arrays.

<img src="http://cf.chucklesnetwork.com/items/7/5/7/0/0/original/i-heard-u-like-arrays-so-we-put-an-array-in-your-array.jpg" width="250px" height="250px" />

The first number in the sub-arrays correspond to the letter "B", the second "I", the third "N", the fourth "G", and the fifth "O". So if the call was N34, you would look in the third column for the number 34. If the number is on your board, you'll replace it with an "X."

**Your goals for this challenge are:**

- Keep all of the logic and variables inside of the class BingoBoard. Method calls can be outside.
- Create a method to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
- Create a method to check the column for the number.
- If the number is in the column, replace it with an "X".
- Display the board to the console (prettily).

Sample bingo board:

```ruby
bingo_board = [[47, 44, 71, 8, 88],
               [22, 69, 75, 65, 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]
```
sample bingo board after calling G, 65:

```ruby
bingo_board = [[47, 44, 71, 8, 88],
               [22, 69, 75, 'X', 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]
```

## Releases

## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)

Break these goals down into implementable pseudocode.

## Release 1: Write your [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)

Translate your pseudocode into code. The initialize method has been written for you, but you will need others to complete the challenge.

## Release 2: Write [Driver Test Code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md)

Test your methods functionality by writing driver test code.

## Release 3: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md)
Refactor your initial solution. Run the driver tests often to determine when you break something.

##Release 4: True Bingo Board (Optional)

The bingo board given is just populated with ramdom numbers from 1 - 100. However, true bingo boards are constructed a bit differently.  Traditionally the pattern is like this: "B" (numbers 1–15), "I" (numbers 16–30), "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) with a free space in the middle.

Create a method that creates a legal bingo board.

## Release 5: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 6: Publish
Commit your changes and push your solution to GitHub.

## External Resources

- [Ruby Array Docs](http://www.ruby-doc.org/core-2.1.3/Array.html)
