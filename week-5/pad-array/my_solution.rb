# Pad an Array

# I worked on this challenge [with: Steven King]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

#DESTRUCTUVE & non-destructive
# What is the input? array, min size and value
# What is the output? (i.e. What should the code return?)array
# What are the steps needed to solve the problem?
# determine size of original array
# find difference between original size and min size
# either take optional argument or nil and pop into array that many times
# if min size is zero, return original array


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  if min_size==0
    return array
  else
    num_things=min_size-array.length
    num_things.times do
      array << value
    end
  end
  array
end

# def pad(array, min_size, value = nil) #non-
#   other_array=[]
#   if min_size==0
#     array.each do |x|
#         other_array << x
#     end
#     return other_array
#   else
#     num_things=min_size-array.length
#     if array == []
#       num_things.times do
#         other_array << value
#       end
#     else
#       array.each do |x|
#         other_array << x
#       end
#       num_things.times do
#         other_array << value
#       end
#     end
#   end
#   other_array
# end

# 3. Refactored Solution

#We only refactored pad. Our pad! was already pretty short

def pad(array, min_size, value = nil) #non-
  other_array=[]
  if min_size==0
    other_array << array
    other_array.flatten!
  else
    num_things=min_size-array.length
    if array == []
      num_things.times do
        other_array << value
      end
    else
      other_array << array
      other_array.flatten!
      num_things.times do
        other_array << value
      end
    end
  end
  other_array
end


# 4. Reflection

=begin
Were you successful in breaking the problem down into small steps?

I think we were. Our pseudocode was decent. We ended up needing more "small steps" than we originally thought we would.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was easier w/ pad! than with pad. Our difficulties came when we were pushing an array into another array. We sort of got hung up on getting an extra set of brackets that we didn't need.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution did not pass the tests. We were getting that extra set of brackets because our solution didn't get rid of them!

When you refactored, did you find any existing methods in Ruby to clean up your code?

Yes, we used .flatten which I'd just learned about.

How readable is your solution? Did you and your pair choose descriptive variable names?

Our pad! solution is totally readable. The pad one could use a lot more work. I think our variable names were solid.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods change permanently an inputted variable. Non destructive methods do NOT permanently change the inputted variable.

=end
