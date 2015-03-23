[Week 5 Home](../)

# U2.W5: Nested Data Structures (Mandatory Pairing Challenge)

## Learning Competencies
- Create nested arrays and hashes
- Access nested elements of arrays and hashes
- Use iteration to loop over nested data structures

## Summary

### Accessing Elements in Arrays and Hashes

By now, you should recognize what kind of data structure this is:

`indexed_list = ["string", 1, 2, false]`

to access the `false` value in the array, you could do `indexed_list[3]`.

Then there is the hash:

`desserts = {:favorite_dessert => "yellow cake", "second favorite dessert" => "cookies"}`

To access the value of my favorite_dessert you can enter `desserts[:favorite_dessert]`.



The array (indexed_list) and hash (desserts) are defined as 1 dimensional data structures. None of the elements hold another data structure. This means that if you were to iterate over either of the structures you could do so with one iterative structure.

`indexed_list.each { |element| puts element }`

This code would output

`"string"
1
2
false
`

You can do the same for the hash:

`desserts.each {|preference ,dessert| puts "#{preference}: #{dessert}"}`

would output

```shell
favorite_dessert: yellow cake
second favorite dessert: cookies
```


So what happens when we add another dimension to our data structure? Take this code as an example:

`nested_array = [1, ["inner", "array"], 2, 3]`

This changes how we can access all of the elements. Copy and paste the `nested_array` to IRB and experiment with accessing the different indexes and see what outputs (`nested_array[0]`, `nested_array[1], etc.).

How can you access the `"inner"` and `"array"` elements individually? You are going to have to go one level deeper, since it is an array inside an array.

What would you expect `nested_array[1][0]` to output? Create a hypothesis before you run the code.

Nested hashes are accessed in a similar manner. Using your knowledge of how nested arrays are accessed, and how to access the elements of a hash, how would you access just the "Winner!" value of the inner hash:

Copy and paste this hash into IRB and experiment:

`nested_hash = {:outer_key => {:inner_key => "Winner!"}}`

### Iterating Over Nested Data Structures

Iterating over nested structures is exactly the same as you are used to, just with an added layer of depth.

Lets say you want to display all of the elements to the console, you can try the code used before:

`nested_array = [1, ["inner", "array"], 2, 3]`

`nested_array.each { |element| puts element}`

What do you think this will output? Make a hypothesis and run this snippet in IRB. Did you get what you expected?

Surprised? Now run this code:

`nested_array.each { |element| p element}`

`puts` has lots of Ruby magic added to it, one of the things it does is iterate over inner arrays while outputting to the console. `p` will show exactly what is being compiled with less added magic than `puts`.

Lets say you ONLY wanted to display the inner array's elements, one way to do it would be to write a conditional to see if any of the elements are an array, then display the contents.

```ruby
nested_array.each do |element|
  if element.kind_of?(Array)
    element.each {|inner| p inner}
  end
end
```

The `nested_array.each` iterates over all elements, then the `element.each` iterates over inner arrays if there are any.

This pattern (iterator inside an iterator) will be helpful when you are working with multi-dimensional data structures. If you need a refresher on iterating and enumerables, check out chapter 10, "Collections central: Enumerable and Enumerator" of the *Well-Grounded Rubyist*.

The big key when working with nested structures is thinking about what exactly the placeholder means. `element` will equal 1 the first time the loop runs, ["inner", "array"] the second time, 2 the third, and 3 for the fourth and final time.

## Release 0: Nested Structure Golf

Open the `my_solution.rb` file, there are 3 nested data structures with a comment of the desired element to access. `p` your first attempt to access it, run the code. If you did not get it on the first try, keep your previous try and add another line. Move on when you `p` the desired output.

## Release 1: Iterate Over Nested Structures

Using an enumerable method, modify the original array and add 5 to each number. *Should this be destructive or not destructive based on the language?*

## Release 2: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 3: Push your solution to Github

## Release 4: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md) (Optional)
**Optional but HIGHLY encouraged!**

## Release 5: n-Dimensional Arrays (Optional)

Working with arrays of more than 2 dimensions has its own unique challenges. Create a startup name generator that adds "ly" to the end of the words in each sub-array.
