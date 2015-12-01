# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
 #   puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# in the cartman_hates method.
# 6. Why did the interpreter give you this error?
#There is no end to the while statement

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#35
# 2. What is the type of error message?
#NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method "south_park"
# 4. Where is the error in the code?
#line 35
# 5. Why did the interpreter give you this error?
# It looks like we're trying to call a method called south_park that doesn't exist or we just put in a variable without defining it.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#50
# 2. What is the type of error message?
#NoMethod Error
# 3. What additional information does the interpreter provide about this type of error?
#undefined method cartman for main:Object
# 4. Where is the error in the code?
#line 50.
# 5. Why did the interpreter give you this error?
#We try to call a method, cartman() which doesn't exist

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#65
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#line 69
# 5. Why did the interpreter give you this error?
#We call a method, cartmans_phrase with 1 argument but the method doesn't take any arguments.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#84
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments
# 4. Where is the error in the code?
#Line 88
# 5. Why did the interpreter give you this error?
#We call a method that takes 1 argument but we don't pass it any arguments.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#105
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments
# 4. Where is the error in the code?
#Line 109
# 5. Why did the interpreter give you this error?
#We call cartmans_lie with just one argument but it takes two

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#124
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into FixNum
# 4. Where is the error in the code?
#line 124
# 5. Why did the interpreter give you this error?
#The interpreter is trying to multiply 5 by "Respect my authoritay!" which is impossible. It could work the other way around. Ruby tries to make the 2nd thing into a number in this case, which it can't do.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#139
# 2. What is the type of error message?
#Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#`/': divided by 0
# 4. Where is the error in the code?
#line 139
# 5. Why did the interpreter give you this error?
# It cannot divide by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#155
# 2. What is the type of error message?
#Load Error
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file -- /Users/stevenking/DBC/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# In line 155.
# 5. Why did the interpreter give you this error?
# It's trying to find a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

I actually thought that the first error was the most difficult - the syntax error where it was looking for the keyword 'end'. If this file wasn't displayed how it is, it may have been hard to find the place where I was missing 'end'.

How did you figure out what the issue with the error was?

It was pretty simple in this case, because I was almost staring right at it.

Were you able to determine why each error message happened based on the code?

Yes. I thought it was obvious what the errors were in this exercise.

When you encounter errors in your future code, what process will you follow to help you debug?

I actually think I'll follow a similar process to one that we were guided through here. I'll look for the line and the type and then the additional information and try to spot the error. I watched the optional video on errors as well which taught me that it's good practice to just mess with one part of the program at a time when trying to identify errors. I'll also use good git workflow when debugging.

=end