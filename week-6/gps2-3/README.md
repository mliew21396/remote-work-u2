[Week 6 Home](../)

# U2.W6: Virus Predictor Pair Challenge


## Learning Competencies
- Evaluate what the code does based on the driver code
- Explain `require-relative`
- Compare two different types of `Hash` syntax
- Explain the type of variable and scope of `STATE_DATA`
- Define each method's responsibility
- Iterate through a nested hash to print a report
- Identify the scope of instance variables
- Explain `private` and discuss when it would be used
- Refactor methods for DRYness

## Summary

The C.D.C. (Centers for Disease Control) is concerned about a recent form of deadly influenza. They've implemented the following program to predict the effect of the virus by state.

The initial program is not very D.R.Y., but the program designer went on vacation and your boss needs the model to work efficiently so they can present their findings to Congress. You've been brought in to make the code more efficient and expandable for later features such as incorporating demographic data.

## Releases

## Release 0: Run the code
Look at the output. Look at the input (it's in the other file). Explain what the program is doing.

## Release 1: `require_relative`
Write a comment explaining the require_relative statement - you should be somewhat familiar with this by now - it's in every `spec.rb` file. What does it do? How does it work?

## Release 2: Analyze `state_data`
Take a look at the `state_data` file. What is going on with this hash? What does it have in it? (HINT: There are two different syntax used for hashes here. What's the difference?) I refer to this giant hash as a "hashy hash;" why do you think that is? What kind of variable is `STATE_DATA`, and what's its scope?

## Release 3: Comment each method
Comment each method (above the method) and define its responsibility.

## Release 4: Implement a new feature!
Right now this is only running a report for 4 states, and it's not incredibly dry.

Create a report for all 50 states in a D.R.Y. way. Does this belong in the class or outside of it? Why?

## Release 5: Refactor `virus_effects`
First, ONLY look at the `virus_effects` method. (Do not look at `predicted deaths` or `speed_of_spread` themselves.) It's a short but deceptive method that isn't quite D.R.Y. Consider the scope of instance variables to determine what could be refactored. Once you figure it out, you'll need to edit the `predicted_deaths` and `speed_of_spread` methods.

## Release 6: Private
What is the purpose of "private"? What happens if you move it above `virus_effects`?

## Release 7: Refactor!
Refactor the private methods `predicted_deaths` and `speed_of_spread`. How can you make them more D.R.Y.?

## Release 8: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

