[Week 6](../)

# U2.W6: attr_ attributes

## Learning Competencies
  - Explain what attr_reader, attr_writer, and attr_accessor are
  - Express what getter and setter methods are
  - Use the attr_ methods to simplify your code
  - Use the attr_ methods to communicate data between classes

## Summary

If you have looked at Ruby or Ruby on Rails code before, you may have noticed this strange section of code under the class declaration. We are going to demystify and talk about the purpose of attr_reader/writer/accessor.

When talking about the different attr_ attributes we are really talking about getter and setter methods.

attr_reader is a getter which means that it just returns a value, but you can not change it.

attr_writer is a setter which means that you can change the value of the variable, but it is not readable.

attr_accessor is both a getter and a setter. We can now return and change the value of the variable.

So knowing this, why not just make everything attr_accessor? Generally we want things to be as closed to change as possible. having all instance variables changeable when we really just want them read could lead to hard to debug problems down the line. It is a safeguard against accidentally giving other methods and classes too much access to the inner workings of others. Read Practical Obect Oriented Design in Ruby if you want to learn more about the basics of software architecture.

## Release 0: Read and Research

Open the [release_0.rb](release_0.rb) and read the code and especially the comments. Is there anything that you see that you do not understand? Look up or ask questions about anything unfamiliar.

Run the code. Do you notice what is changing?

## Release 1: Identify the changes

Open [release_1.rb](release_1.rb) after you finished the instructions for release0.rb. Read the comments and code. Do you notice where the code changed from the last release?

## Release 2: More changes

Open [release_2.rb](release_2.rb) and look at the code. Read the comments and notice where the code changed. All outputs should be the same between all releases even though we are changing the format of our code.

## Release 3: Finally using attr

Open [release_3.rb](release_3.rb) like the others. We now added the attr_accessor declaration. Notice how we reduced superflous code.

## Release 4: Refactor to use attr

Go to [my_solution.rb](my_solution.rb). You will now finish refactoring the code to make the best use of the attr_ attributes.

Make a new class called Kim that initializes an instance of Profile in its initialize method. Now you can have access to the methods you created in class Profile. Make methods called happy_birthday, change_job, and name_change that access the instance variable in Profile and change them.

The ability to use classes in concert is a powerful tool and one you will be using often!

