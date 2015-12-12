=begin
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
Split string into array
Make a new hash with default quantity of 1
Iterate over array
Put each item in hash with default quantity
Call print method
# output: Hash

# Method to add an item to a list
# input: list; item name and optional quantity
# steps: add item name and quantity to list
# output:updated list

# Method to remove an item from the list
# input: list; item name
# steps:delete item from the list
# output:updated list

# Method to update the quantity of an item
# input: list; item name and quantity
# steps:adjust value of given key
# output:updated list

# Method to print a list and make it look pretty
# input: list
# steps:For each listed item, print "We need #value #keys"
# output: printed pretty list



=end

def create_list(groceries)
  grocery_array=groceries.split
  grocery_list = Hash.new(1)
  grocery_array.each do |item|
    grocery_list[item] = grocery_list.default
  end
  print_list(grocery_list)
end

def print_list(grocery_list)
  grocery_list.each do |item, value|
    puts "We need #{value} #{item}"
  end
end

def add_item(grocery_list, grocery, quantity=1)
  grocery_list[grocery] = quantity
  print_list(grocery_list)
end

def remove_item(grocery_list, grocery)
  grocery_list.delete(grocery)
  print_list(grocery_list)
end

def update_quantity(grocery_list, grocery, quantity)
  grocery_list[grocery] = quantity
  print_list(grocery_list)
end

#tests

my_list = create_list("apples carrots pizza")
p my_list == {"apples"=>1, "carrots"=>1, "pizza"=>1}
# add_item(my_list, "eggs", 3)
# p my_list == {"apples"=>1, "carrots"=>1, "pizza"=>1}
p add_item(my_list, "eggs", 3) == {"apples"=>1, "carrots"=>1, "pizza"=>1, "eggs" =>3}

p remove_item(my_list, "apples") == {"carrots"=>1, "pizza"=>1, "eggs" =>3}

p update_quantity(my_list, "carrots", 5) == {"carrots"=>5, "pizza"=>1, "eggs" =>3}

p add_item(my_list, "yogurt") == {"carrots"=>5, "pizza"=>1, "eggs" =>3, "yogurt" =>1}

#end tests

#refactored solution

# def create_list(groceries)
#   grocery_array=groceries.split
#   grocery_list = Hash.new(1)
#   grocery_array.each do |item|
#     grocery_list[item] = grocery_list.default
#   end
#   print_list(grocery_list)
# end

# def print_list(grocery_list)
#   grocery_list.each do |item, value|
#     puts "We need #{value} #{item}"
#   end
# end

# def add_or_update_item(grocery_list, grocery, quantity=1)
#   grocery_list[grocery] = quantity
#   print_list(grocery_list)
# end

# def remove_item(grocery_list, grocery)
#   grocery_list.delete(grocery)
#   print_list(grocery_list)
# end

=begin

What did you learn about pseudocode from working on this challenge?

I learned how valuable it can be. I also learned something else
interesting, which is I don't really know what I want the
output to be right away until I dig into all the methods
that I'll need to write.

What are the tradeoffs of using Arrays and Hashes for this challenge?

We used hashes for almost everything. I can't see how arrays
would be better. We briefly used an array to help build our hash
which was handy.

What does a method return?

Whatever you tell it to return! No, but seriously, it returns
the last thing that's evaluated.

What kind of things can you pass into methods as arguments?
How can you pass information between methods?

You can pass all kinds of things into methods. You can pass all
objects as far as I know. We passed in a hash, a string, and an
integer.

What concepts were solidified in this challenge, and what concepts are still confusing?

I learned more about how to get things from one method into another.
I still don't know that my refactoring is going well.  It'd be
great to learn more built in methods for hashes and arrays.

=end