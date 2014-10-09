[Week 5 Home](../)

# U2.W5: A Nested Array to Model a Boggle Board **SOLO CHALLENGE**

Please refer to the [solo challenge](https://github.com/Devbootcamp/phase-0-handbook/blob/master/solo-challenges.md) guidelines in the [Phase 0 Handbook](https://github.com/Devbootcamp/phase-0-handbook).

## Learning Competencies
- Break down problems into implementable pseudocode
- Create, access, and traverse nested data structures
- Explain how data structures and classes can model a real-world object
- Explain how instance variables and methods represent the characteristics and actions of an object

## Summary

We've already worked with hashes and arrays as data structures.  They are handy ways of collecting and organizing data, and ideal for modeling a group of objects.

In this challenge, we're going to model a grid or a board that has coordinates for each of its cells.  A logical way of modeling a board is to use a nested array, where a row and column are its coordinates.

Let's explore a boggle board as an example.

```ruby
boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
```

If we wanted to access the "r" character in the first row, we'd use the syntax below because "r" is in row 0 and under column 1. (Remember that arrays start counting from 0).

In boggle, you can spell out words by collecting letters that are immediately next to one another (up, down, across, or diagonally).  One of the words possible in the above boggle board is "code." Below is a simple method that takes a group of coordinates and returns a string of the corresponding `boggle board` elements.

```ruby
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?
```

With this code, the following expectations should return `true`

```ruby
puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false
```

## Releases:

## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding_references/pseudocode.md)

Using the information above, your job will be to create a class object so you don't have to require the board you are using every time you want to access elements within it.

Your goals in this challenge are to:
1. Create a class object that creates an instance of a boggle_board (There are many different boggle boards - so design the program to be a bit flexible. You don't just want one boggle board!)
2. Create a method that returns all elements for a particular row so that get_row(1) #=>  ["i", "o", "d", "t"]
3. Create a method that returns all elements for a particular column so that get_col(1)  #=>  ["r", "o", "c", "a"]

Break these challenges down into implementable parts.

## Release 1: [Driver Code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md)
Now that you have some pseudocode built in, write some method calls and use expectations so they return true or false. That will really help you when you get to refactoring since you will know immediately if you break it.

Try creating and testing a couple different versions of boggle boards to get the hang of working with nested arrays.

## Release 2: [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding_references/initial_solution.md)
Translate your pseudocode into code. Fill in the skeleton in the my_solution.rb file.

## Release 3: [Refactored Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding_references/refactoring.md)
Refactor your initial solution. Use the driver tests to get feedback about when you break something.

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)
Along with your reflection describe what the splat operator in the 'create_word' method is doing.

## Release 5: Push your solution
Commit your changes and push your solution to github!

## External Resources
* [Boggle on Wikipedia](http://en.wikipedia.org/wiki/Boggle)
* [Play Boggle online](http://www.wordplays.com/boggle)
