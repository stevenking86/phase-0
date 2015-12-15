# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Die.sides will output the number of sides. Die.roll will output a random selection from the array of strings.
# Steps:
# define the initialize method.
# @labels = labels
# Include the argument error to be raised if initialized w/ an empty array
#define sides method
#  set @sides to equal the number of items in the array
#end
#define roll method
#  should return @labels.sample
#end


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if @labels == []
#       raise ArgumentError.new "labels cannot be empty"
#     end
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels == []
      raise ArgumentError.new "labels cannot be empty"
    end
  end

  def sides
    #make calling .sides return the number of items in @labels
    @labels.length
  end

  def roll
    #make calling .roll return a random item from @labels
    @labels.sample
  end
end






# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

There weren't huge differences. The sides method
was slightly easier in the previous die class
because it was simply @sides, which was passed
into the class. And I used .sample instead of rand
 to produce my random element this time because I
 know that works well with arrays.

What does this exercise teach you about making code that is easily changeable or modifiable?

Making easily changeable code is the way to go!
I didn't just copy and paste my old code and modify
it but I probably could have.

What new methods did you learn when working on this challenge, if any?

Nothing new on this one. I'd used .sample previously
on the make accountability groups challenge.

This isn't a new method but it's a new thing to me. I
realized when doing reviews that some of my peers
have been commenting their code out in great ways so
I remembered to do that during refactoring this time.

What concepts about classes were you able to solidify in this challenge?

I'm starting to wrap my head around how they work and
how different types of variables work. I'm also
understanding the syntax for raising argument errors
much better now.


=end