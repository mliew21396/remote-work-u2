[Week 4 Home](../)

# U2.W4: Create a Method to Pad an Array

## Learning Competencies
- Break a large problem down into smaller steps
- Implement a method based on pseudocode
- Research and use Ruby methods
- Differentiate between and produce destructive and non-destructive methods

## Summary:
In this challenge, you'll be working with destructive and non-destructive methods. In Ruby, the general convention is to add a "bang" (`!`) to destructive methods (although some methods are destructive and don't have a bang). Destructive methods modify the original data structure permanently. Non-Destructive methods will return a new array and will not modify the existing array.

One example of this is shown below:

```ruby
# Non-Destructive
irb(main):001:0> trees = ["Birch", "Fig", "Lime", "Pine"]
=> ["Birch", "Fig", "Lime", "Pine"]
irb(main):002:0> trees.collect {|tree| tree + " Tree"}
=> ["Birch Tree", "Fig Tree", "Lime Tree", "Pine Tree"]
irb(main):003:0> trees
=> ["Birch", "Fig", "Lime", "Pine"] #trees has not been modified

# Destructive
irb(main):004:0> trees.collect! {|tree| tree + " Tree"}
=> ["Birch Tree", "Fig Tree", "Lime Tree", "Pine Tree"]
irb(main):005:0> trees
=> ["Birch Tree", "Fig Tree", "Lime Tree", "Pine Tree"] #trees has been
# permanently modified.

```

In this challenge, you'll want to write two methods `pad` and `pad!`. Each method accepts an array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded" with (see the example with "apple" below).

If the array's length is less than the minimum size, `pad` should return a new array padded with the pad value up to the minimum size.

For example,
```ruby
pad([1,2,3], 5)
```

should return

```ruby
[1,2,3,nil,nil]
```

And

```ruby
pad([1,2,3], 5, 'apple')
```

should return

```ruby
[1,2,3,'apple', 'apple']
```

If the minimum size is less than or equal to the length of the array, it should just return the array.

That is, `pad([1,2,3], 3)` should return `[1,2,3]`.

`pad(my_array, 0)` should always return an array equal to `my_array`. `pad` should also always return a new object, so it should be non-destructive.

`pad!` behaves identically to `pad` except that it modifies the original array.

In this challenge, we will ask you to follow a specific coding process. From now on, we will use these links to outline the coding process for each challenge. It is required that you complete each non-optional release.

## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)

## Release 1: Write your [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)

## Release 2: Run the tests
Once your code passes the tests, move on to refactoring.

## Release 3: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md) your solution
Make sure your code still passes the tests!

## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Commit and Push!
If you want feedback, please post your links to Twitter using the hashtag **#DBCU2W4** to request it!

## Release 6: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md) (Optional, but Highly encouraged).

Reading other's code is really important for your growth as a developer. You can find other people's code using the instructions in the link above, or by looking it up using Twitter. Read through a couple of different solutions and give the authors feedback using issues on GitHub.

This type of feedback will not be anonymous. That's ok.

If someone reviews your code and leaves you feedback, return the favor!
