[Week 4 Home](../)

# U2.W4: Create a Method to Pad an Array
**Pairing Challenge**


## Learning Competencies
- Break a large problem down into smaller steps
- Implement a method based on pseudocode
- Research and use Ruby methods
- Differentiate between and produce destructive and non-destructive methods

## Summary:
In this challenge you will be extending the `Array` class to add two new methods. That's why you see the methods wrapped within a class. Don't focus on that part of the code. Rather, focus on implementing the two new methods.

Implement `Array#pad` and `Array#pad!`.  Each method accepts a minimum size (non-negative integer) and an optional pad value as arguments.

If the array's length is less than the minimum size, `Array#pad` should return a new array padded with the pad value up to the minimum size.

For example,
```ruby
[1,2,3].pad(5)
```

should return

```ruby
[1,2,3,nil,nil]
```

And
```ruby
[1,2,3].pad(5, 'apple')
```

should return

```ruby
[1,2,3,'apple', 'apple']
```

If the minimum size is less than or equal to the length of the array, it should just return the array.

That is, `[1,2,3].pad(3)` should return `[1,2,3]`.

`my_array.pad(0)` should always return an array equal to `my_array`.  `Array#pad` should always return a new object, i.e., it should be non-destructive.

`Array#pad!` behaves identically to `Array#pad` except that it modifies the original array.


## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)

## Release 1: Write your [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)

## Release 2: Run the tests
Once your code passes the tests, move on to refactoring.

## Release 3: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md) your solution
Make sure your code still passes the tests!

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Commit and Push!
If you want feedback, continue using **#DBCU2W4** to request it!

## Release 6: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md) (Optional)
**Optional but HIGHLY encouraged!**