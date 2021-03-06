[Week 6 Home](../)

# U2.W6: Pair Cipher Challenge (Mandatory pairing challenge)

## Learning Competencies
- Identify and explain what code is doing
- Automate repetitive tasks using loops
- Break a large problem down into smaller steps
- Identify and rewrite repetitive code
- Refactor a method into a class structure

## Summary
Dr. Evil traveled back in time to WWII and you, [Joan Clark](http://en.wikipedia.org/wiki/Joan_Clarke), just broke the cipher he's been using to give instructions to his secret military commanders! Now that you cracked the code, it's time to refactor it since functional is not always readable.

In this challenge, you'll work with a pair to refactor some existing code to make it more readable and follow Ruby best practices. Then you will compare your solution with the other solutions. This is a long method. Use your newly-developed skills with classes and driver test code to break this code into a class structure and call the methods within it.

## Release 0: Run the code
See what the expected output is.

## Release 1:  Read the code
Identify what each line of code is doing. It's located in the [my_solution.rb](my_solution.rb) file.

Write comments next to or above each line with an explanation.
Really focus on breaking each step down. You want to understand every line.

## Release 2: Write Tests
Use [driver test code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md). What will always be the same using this cipher? What changes? Write driver test code based on what you discover.

## Release 3: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md) (by rewriting) the initial solution

  - Refactor to remove the hard-coded hash. Can you create a simple algorithm instead? The original shift was by 4 characters. What would happen if it was changed to 10? Would your class be able to handle that change easily?
  - Change the variable names so they make sense. You should always know what something is without needing a mental dictionary to understand it. (Who knows what x and y are anyway?)
  - Simplify the logic in the `each` and `each_key` loops.

**Now that you've cleaned up the method, refactor it into an object-oriented class structure using the knowledge you've learned this week.**

  You might think about methods to:
  - Shift letters from one to another based on a shift that is defined when the method is called. (i.e. `letter_convertor(4)`)
  - A method to convert punctuation
  - A method to combine outputs from the above methods and "join" a sentence.


Once you've created your class and methods, Edit your driver test code to work with the new class.

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Push your changes
Push your solution to Github, then request feedback on Twitter using **#DBCU2W5**

## Release 6: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md)
**Review 2 other solutions for this challenge. This is not optional.**

## You're Done!
![Dr. Evil](../imgs/dr_evil.gif)
