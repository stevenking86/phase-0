
# Your Names
# 1) Steven King
# 2) Tiffany

# We spent [1 hour] hours on this challenge.


#Need to have something that says the remaining ingredients and what we made
#destructive method to hash
# Bakery Serving Size portion calculator.

def serving_size_calc(inventory, item_to_make, num_of_ingredients)

  unless inventory.has_key?(item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  serving_size = inventory[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size




  if remaining_ingredients == 0
    puts "We have the ingredients to make #{num_of_ingredients / serving_size} #{item_to_make} with no leftovers."
  else
    puts "We have the ingredients to make #{num_of_ingredients / serving_size} #{item_to_make}. You have #{remaining_ingredients} leftover ingredients. You need #{serving_size - remaining_ingredients} ingredients to make another #{item_to_make}."
  end


    while remaining_ingredients > 0
    if remaining_ingredients >= 7
      puts "You can make a pie with the leftovers."
      remaining_ingredients -= 7
    elsif remaining_ingredients >= 5
      puts "You can make a cake with the leftovers."
      remaining_ingredients -= 5
    else
      puts "You can make #{remaining_ingredients} cookies with the leftovers."
      remaining_ingredients = 0
    end
  end

end

library = {"cookie" => 1, "cake" =>  5, "pie" => 7}


p serving_size_calc(library, "pie", 13)
p serving_size_calc(library, "pie", 8)
p serving_size_calc(library, "cake", 5)
p serving_size_calc(library, "cake", 7)
p serving_size_calc(library, "cookie", 1)
p serving_size_calc(library, "cookie", 10)
p serving_size_calc(library, "THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

I learned that it's not as easy as it might seem. I also learned
how important it is. The code was almost unreadable. It took us a
bit of time just to figure out what was happening. I learned that
I almost need to pseudocode again in order to decide how to clean
up code.

Did you learn any new methods? What did you learn about them?

I learned has_key? which was useful for checking over a hash to see
if a given key is there. Our guide let us know that this method
doesn't technically iterate over a hash. It checks to see if
the value is nil.

What did you learn about accessing data in hashes?

See above! Other than that, I learned about the values_at method
which returns an array.

What concepts were solidified when working through this challenge?

Raising arguments is one that's still somewhat new to me. That's
becoming more solid as we are using it more. Testing code as well
is something that's getting solidified.

=end