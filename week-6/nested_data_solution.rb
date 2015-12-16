# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#3 "almost" :inner :outer
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
nested_data[:array][1][:hash]
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES


number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
end

puts number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# startup_names.map! do |element|
#   if element.kind_of?(Array)
#     if element.kind_of?(Array)
#       element.map! do |inner|
#         if inner.kind_of?(Array)
#           inner.map! {|x| x <<"ly"}
#         else
#           inner << "ly"
#         end
#       end
#     end
#   else
#     element << "ly"
#   end
# end

#puts startup_names

#refactored Bonus

startup_names.flatten!
startup_names.map! {|x| x<<"ly"}
p startup_names

=begin

REFLECTION:

What are some general rules you can apply to nested arrays?

Access the nested elements the same way you access the elements. Just keep adding on more brackets!

What are some ways you can iterate over nested arrays?

Nesting the same methods used on regular arrays works. .each .map etc.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I think it's possible we could've found even better methods. But we
used the example from the 6.5 directions page as our guide. They used
nested .each statements. We used nested .map statements.


=end