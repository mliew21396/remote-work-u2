[Week 6 Home](../)

# U2.W6: Create a PezDispenser Class from User Stories

## Learning Competencies
- Implement a basic Ruby class and identify when to use instance variables
- Translate driver code into a class structure using object-oriented design

## Summary
In this challenge, you will translate user stories into a Ruby class object. If you aren't sure what a user story is, use the power of Google to do some research.

## Releases

## Release 0: Read
Read the following in POODR.
- Chapter 3: Managing Dependencies
- Chapter 4: Creating Flexible Interfaces

Building on the concepts of single responsibility, dependencies, and flexible interfaces, complete the following challenge and integrate as many of these principles as possible.

## Release 1: User Stories
Read the User Stories below. Identify the attributes and methods you will need to create to support each story. You'll list them out in the pseudocode section.

  - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.
  - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.
  - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
  - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
  - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.

## Release 2: Review the [Driver Code](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/driver-code.md)
This driver code should instantiate the class and run its methods, but they do not have expectations that return `true` or `false`.

## Release 3: [Pseudocode](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/pseudocode.md)
You already know you need to have a PezDispenser class by looking at the Driver code, but you may be unsure of what attribute(s) and method(s) it needs. Looking at the user stories above, list the attribute(s) and method(s) you'll need to support the functionality required by the user stories and the driver code. With each method, also take a moment to identify the input and output. If there is no input or output, identify that as well. Then, write pseudocode for how each method should work.

## Release 4: Write your [Initial Solution](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/initial-solution.md)
Make sure your driver code runs and the output matches what you expect.

Then, implement a `Pez` class so instead of simply passing in a flavor as a string to the `PezDispenser` class, you will pass in an array of `Pez` objects that has a flavor. What else do you need to change in the Driver code to make it return the same thing as it did before? This exercise will really help solidify attr methods...

For example:

```ruby
flavors = []
flavors.push(Pez.new("cherry")) #There is a smarter way to create a new Pez object for each flavor...it involves iteration...
super_mario = PezDispenser.new(flavors)
```

Modify the driver code and your class appropriately to make that work. How difficult was that?

## Release 5: Write Tests
Using your new driver code, write driver test code that returns `true` when the code runs as it should.

## Release 6: [Refactor](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/refactoring.md)
Focus on using the OO principles you've learned so far from POODR as well as making the code readable and DRY.

## Release 7: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 7: Push your solution to Github

## Release 8: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md) (Optional)
**Optional but HIGHLY encouraged!**