[Week 6 Home](../)

# U2.W6: Create a Bingo Scorer [SOLO CHALLENGE](https://github.com/Devbootcamp/phase-0-handbook/blob/master/solo-challenges.md)

## Learning Competencies
- Create pseudocode, staying away from code-specific syntax
- Access coordinates in a nested array
- Use a logical method of searching for BINGO
- Use built-in Ruby methods to simplify code when appropriate
- Use local, instance, and/or class variables appropriately
- Refactor original code to make it more readable and concise
- Reflect on your learning process

## Summary
Last week you created a class for calling and marking squares on a bingo board. Now you will write a class that will look for the presence of bingo win conditions. Use the sample boards to create tests for your methods to check for bingos. When a bingo is found, the program should print "BINGO!" to the console.

A bingo in this exercise is a vertical horizontal or diagonal line of 5 x's.
```ruby
  [[47, 44, 71, 8, 88],
   ['x', 'x', 'x', 'x', 'x'],
   [83, 85, 97, 89, 57],
   [25, 31, 96, 68, 51],
   [75, 70, 54, 80, 83]]
   # horizontal bingo

   [[47, 44, 71, 'x', 88],
   [22, 69, 75, 'x', 73],
   [83, 85, 97, 'x', 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 'x', 83]]
   # verical bingo

   [['x', 44, 71, 8, 88],
   [22, 'x', 75, 65, 73],
   [83, 85, 'x', 89, 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 80, 'x']]
   # diagonal bingo

   [[47, 44, 71, 8, 'x'],
   [22, 69, 75, 'x', 73],
   [83, 85, 'x', 89, 57],
   [25, 'x', 96, 68, 51],
   ['x', 70, 54, 80, 83]]
   # also a diagonal bingo
```
## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)
Outline the logic necessary to check the bingo board for horizontal, vertical and diagonal bingos. Make sure your pseudocode is specific enough to be easily translated into code.

Also focus on implementing Object-Oriented design principles you've learned into your solution.

## Release 1: Write your [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)
Translate your pseudocode into code.

## Release 2: Test
Write [Driver Test Code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md) to test the different win cases. Try to find some board cases that break your code (false positive/negatives). This will allow you to refactor with confidence.

## Release 3: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md)

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Push your solution to Github

## Release 6: Other Win States (Optional)
There are lots of different ways to win Bingo.

<img src='http://davbingo.com/wp-content/uploads/2011/07/7-ways-to-win-bingo320.jpg' />

Write methods to solve as many as you can!
