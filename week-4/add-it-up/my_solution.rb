# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Lucas ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
method
variable equals zero
loop array
variable plus poped array
end if array empty
return variable
=end
# Input: array
# Output: sum of array
# Steps to solve the problem.
=begin
method
variable equals zero
loop array
variable plus poped array
end if array empty
return variable
=end
# 1. total initial solution
def total(array)
  n = 0
  while array != []
  n += array.pop
  end
  n
end

# 3. total refactored solution
def total(array)
  array.inject { |sum, n| sum + n}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: sentence of the array
# Steps to solve the problem.
=begin
Method
Variable equals empty
Loop array taking off the first word
Add the first word to the variable
Add empty space after each word
Iterate
End if array empty
Return variable
=end

# 5. sentence_maker initial solution
def sentence_maker(array)
  n = ""
  while array != []
  n += array.shift.to_s
  if array.length >= 1
  n += " "
  end
  end
  n += "."
  n.capitalize
end
# 6. sentence_maker refactored solution
def sentence_maker(array)
  m = array.join(" ") + "."
  m.capitalize
end

