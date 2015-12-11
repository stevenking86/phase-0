# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: A number of sides for a die
# Output: A roll of the dice! (A random number based on the number of sides the dice has.)
# Steps:
# Create a die class
# set it to initilize with a number of sides
# create a method that'll return the number of sides when called
# create a method that outputs a role of the dice when rolled


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     unless @sides >= 1
#       raise ArgumentError.new "Input a larger number!"
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new "Input a larger number!" unless @sides >= 1
  end

   attr_reader :sides

  def roll
    rand(1..@sides)
  end
end






# 4. Reflection

=begin

What is an ArgumentError and why would you use one?

It means the argument we were given for a specific
method (or class) won't work. We'd use one if the
argument given doesn't make sense for what we want
to do. For example, if we're given a positive integer
but only a negative one would make sense.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I emplemented almost all this stuff for the first time!
I initialized an instance of a class. I implemented
two different ways for it to call something on itself
and I used #rand for the first time to create a roll
of the dice.


What is a Ruby class?

A ruby class is a type of object. Each class has
different methods that can be called on it.


Why would you use a Ruby class?

It seems like there are tons of uses for a class. I'd
make one whenever I needed to create multiple objects
that will need to have the same methods called upon
them.

What is the difference between a local variable and an instance variable?

A local variable can be accessed within a method. An
instance variable is written with an @ at the start.
Each instance of a class could have different instance
variables. Like how strings have different lengths.

Where can an instance variable be used?

It can be called on an instance of a class.


=end