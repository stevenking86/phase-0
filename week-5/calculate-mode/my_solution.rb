# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Jeff Schneider ]

# I spent [1.25] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#take an array of numbers or strings
# What is the output? (i.e. What should the code return?)
#Array of the most frequent values

# What are the steps needed to solve the problem?
# Iterate through the array
# Turn the array into a hash, each item from the array will be a key. The frequency of that key will be the value.
#Push the key of the highest value to a new array
#return new array


# 1. Initial Solution
# def mode(array)
#   mode_hash = Hash.new
#   array.each do |x|
#     if mode_hash.has_key?(x)
#       mode_hash[x] += 1
#     else
#       mode_hash[x] = 1
#     end
#   end
#   a = mode_hash.values.sort.last
#   answer_array = []
#   mode_hash.each do |key, value|
#     if value == a
#       answer_array << key
#     end
#   end

#   return answer_array

# end


# 3. Refactored Solution
def mode(array)
  mode_hash = Hash.new
  array.each do |x|
    if mode_hash.has_key?(x)
      mode_hash[x] += 1
    else
      mode_hash[x] = 1
    end
  end
  a = mode_hash.values.sort.last
  answer_array = []
  x = mode_hash.select { |key, value| value == a}
  answer_array = x.keys
  return answer_array
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We used a hash because it was highly hinted that we should! But seriously, it worked well ad a way to count up instances of each item in our array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yes, our pseudocode worked as a great guide for us.

What issues/successes did you run into when translating your pseudocode to code?

We mostly just needed to look up what we wanted to do in the ruby docs quite a bit. We knew things were possible, we just needed to figure out how.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

In the initial solution we used .each, which is a bit more simple. When refactoring we learned about .select which helped us shorten our code and use fewer loops.

=end