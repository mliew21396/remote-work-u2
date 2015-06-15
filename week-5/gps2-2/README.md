[Week 5 Home](../)

# U2.W5: The Most-Efficient Bakery Challenge

**This is a Guided Pairing Session challenge for Unit 2. Please do not look at the challenge until your Guided Pairing Session.**

## Learning Competencies
- Explain the goal of the code accurately based on driver code
- Properly indent and comment the code
- Describe the purpose of each line of code
- Analyze the purpose of variables
- Describe the benefits of a hash and refactor inefficient implementations of accessing a hash
- Research methods and principles using Ruby Docs and other online resources
- Explain the purpose of flow control and looping
- Identify and refactor redundant or WET (not DRY) code

## Summary
Your future career will require you to deal with a lot of "legacy code," i.e. code that works, but is difficult to modify. Sometimes you will be given the option to start over or modify the original code. Other times you will be forced to work with legacy code due to time or budget constraints. In this challenge, you will need to refactor the existing code, while making it work the same way. The driver test code should still print "true" without being modified (apart from one test - figure out why!).

This challenge was created while working at a Bakery. The code itself works in a strange way -- to maximize efficiency. The Bakery makes exactly enough food for each person to have a single serving, regardless of what their favorite food is. That said, this challenge will help you solidify your Ruby fundamentals.

You'll want to work through each release as stated. It breaks up the flow of the challenge, but each section is tied to a learning competency.

## Releases

## Release 0: Run the code
Whenever you get a set of code, you want to run it to make sure it works. Run the [my_solution.rb](my_solution.rb) file in your terminal before making any changes.

You'll see that one test returns `false`, which indicates the code isn't working 100% as intended. Don't worry about this for now.

## Release 1: Identify the Purpose
Based on the test code at the bottom, what is the code doing (in general)? Identify the inputs and outputs. What do the tests output and why?

What does the value represent for each key in the hash? (HINT: use the summary and line 11 to help).

## Release 2: Setting up Variables
- Look at the "Release 2" chunk of code. What is it doing? What information does each variable hold?
- Write a comment about what this chunk of code is doing below "Release 2," but above the code.

## Release 3: Hashes
- Indent the "Release 3" chunk properly.
- Then read through and discuss what it's doing. Write that in a comment below "Release 3."
- Consider, is this code efficient? Why or why not?
- Refactor the code as necessary.
- Run the code after making changes to check it still works!

## Release 4: ArgumentError
- Indent the "Release 4" chunk of code properly.
- Then read through and discuss what it's doing. Write that in a comment below "Release 4."
- Based on the code up to this point, does this implementation make sense? Discuss with your pair.
- Refactor the code (all chunks to this point are fair game).
- Run the code after making changes to check it still works!

## Release 5: `values_at`
- Indent this line properly based on your current code.
- Identify what this code is doing and how it works. Write that in a comment below "Release 5."
- What do you think of this way of getting the `fav_food_qty`? Do you think it's clean? Refactor as necessary.
- Run the code after making any changes to check it still works!

## Release 6: On to the logic!
- Indent this code properly.
- Identify what this code is doing and how it works. Write that in a comment below "Release 6."
- What do you think of this implementation? Does it make sense? Can anything be improved? If so, refactor it.
- Run the code after making any changes to check it still works!

## Release 7: While...
- For this release you'll need to read through the rest of the code and figure out what `while` is doing.
- Properly indent the code in "Release 7" and "Release 8" as you read through it.
- Based on what you've read, what is the purpose of the `while` loop? Write that as comment below "Release 7."

## Release 8: Why is it all so terrible?!?! (Optional)
- You should already know what this chunk of code does, so write that in a comment below "Release 8."
- What do you think about the way the code works from releases 5 - 8? Does it make sense to you? Is there a better way to do this?
- Refactor the code so that the method will give "cake" if they ask for it. You can decide how to implement this.
- Run the code after making the changes to ensure it still works.

## Release 9: Submit Feedback for your Pair
After your pairing session is over, submit feedback on [Feedbackinator](https://socrates.devbootcamp.com/feedback/new).

## Release 10: Submit your challenge!
Push your solution to GitHub in the [my_solution.rb](my_solution.rb) file. Remember to include your pair's name!
