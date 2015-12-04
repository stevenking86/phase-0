# Factorial

# I worked on this challenge [with: Lucas ].


# Your Solution Below
def factorial(number)
  n=1
  if number == 0
    return 1
  elsif number == 1
    return 1
  end
  while number > 1
    n *= number
    number -= 1
    puts n
  end
  return n
end



