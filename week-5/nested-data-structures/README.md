[Week 5 Home](../)

# U2.W5: Nested Data Structures

## Learning Competencies
- Create arrays and hashes
- Access elements of arrays and hashes
- Access elements of inner arrays and hashes
- Use iterative devices to loop over data structures holding data structures

## Summary

### Accessing Elements in Arrays and Hashes

By now, you should recognize what kind of data structure this is:

`indexed_list = ["string", 1, 2, false]`

to access the `false` value in the array, you could do `indexed_list[3]`.

Then there is the hash:

`key_value = {:symbol_key => "symbol value", "string_key" => "string value"}`

To access the `"string_value"` you could enter `key_value["string_key"]`

The array (indexed_list) and hash (key_value) are defined as 1 dimensional data structures. None of the elements hold another data structure. This means that if you were to iterate over either of the structures you could do so with one iterative structure.

`indexed_list.each { |ele| puts ele }`

This code would output

`"string"
1
2
false
`

You can do the same for the hash:

`key_value.each {|k,v| puts "#{k} and #{v}"}`

would output

```ruby
"symbol_key and symbol value"
"string_key and string value"
```


So what happens when we add another dimension to our data structure? Take this code as an example:

`nested_array = [1, ["inner", "array"], 2, 3]`

This changes how we can access all of the elements. Copy and paste the `nested_array` to IRB and experiment with accessing the different indexes and see what outputs (`nested_array[0]`, `nested_array[1], etc.).

How can you access the `"inner"` and `"array"` elements individually? You are going to have to go one level deeper, since it is an array inside an array.

What would you expect `nested_array[1][0]` to output? Create a hypothesis before you run the code.

Nested hashes are accessed similarly. Using your knowledge of how nested arrays are accessed, and how to access the elements of a hash, how would you access just the "Winner!" value of the inner hash:

Copy and paste this hash into IRB and experiment:

`nested_hash = {:outer_key => {:inner_key => "Winner!"}}`

### Iterating Over Nested Data Structures

Iterating over nested structures is exactly the same as you are used to, just with an added layer of depth.

Lets say you want to display all of the elements to the console, you can try the code used before:

`nested_array = [1, ["inner", "array"], 2, 3]`

`nested_array.each { |ele| puts ele}`

What do you think this will output? Make a hypothesis and run this snippet in IRB. Did you get what you expected?

Surprised? Now run this code:

`nested_array.each { |ele| p ele}`

`puts` has lots of Ruby magic added to it, one of the things it does is iterate over inner arrays while outputting to the console. `p` will show exactly what is being compiled with less added magic than `puts`.

Lets say you ONLY wanted to display the inner array's elements, one way to do it would be to write a conditional to see if any of the elements are an array, then display the contents.

```ruby
nested_array.each do |ele|
  if ele.kind_of?(Array)
    ele.each {|inner| p inner}
  end
end
```

The `nested_array.each` iterates over all elements, then the `ele.each` iterates over inner arrays if there are any.

This pattern (iterator inside an iterator) will be helpful when you are working with multi-dimensional data structures. If you need a refresher on iterating and enumerables, check out chapter 10 of the Well Grounded Rubyist.

The big key when working with nested structure is thinking about what exactly the placeholder means. `ele` will equal 1 the first time the loop runs, ["inner", "array"] the second time, 2 the third, and 3 for the fourth and final time.


## Release 0: Nested Structure Golf

Open the `my_solution.rb` file, there are 3 nested data structures with a comment of the desired element to access. `p` your first attempt to access it, run the code. If you did not get it on the first try, keep your previous try and add another line. Move on when you `p` the desired output.

## Release 1: Iterate Over Nested Structures

Modify the original array and add 5 to each number.


## Release 4: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)

## Release 5: Push your solution to Github

## Release 6: [Review](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/review.md) (Optional)
**Optional but HIGHLY encouraged!**

##BONUS: n-Dimensional Arrays

Working with arrays of more than 2 dimensions has its own unique challenges. Create a startup name generator that adds "ly" to the end of the words in each sub-array.


