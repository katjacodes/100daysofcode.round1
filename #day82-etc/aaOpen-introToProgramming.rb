# Methods

def goodbye(name)
  statement = "Bye " + name + "."
  return statement
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."


	# OR

def goodbye(name)
  return = "Bye " + name + "."
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."


# Write a method is_div_by_5(number) that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise

def is_div_by_5(number)
  if number % 5 == 0
    return "true"
  else
    return "false"
  end
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false


# Write a method either_only(number) that takes in a number and returns true if the number is divisible by either 3 or 5, but not both. The method should return false otherwise.

def either_only(number)
  if number % 3 == 0 && number % 5 != 0
    return "true"
  elsif number % 3 != 0 && number % 5 == 0
    return "true"
  else
    return "false"
  end
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false


# Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers.

def larger_number(num1, num2)
  if num1 > num2
    return num1
  elsif num1 < num2
    return num2
  end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100


# Write a method longer_string(str1, str2) that takes in two strings and returns the longer of the two strings. In the case of a tie, the method should return the first string.

def longer_string(str1, str2)
  if str1.length > str2.length
    return str1
  elsif str2.length > str1.length
    return str2
  else 
    return str1
  end
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"


# Write a method number_check(num) that takes in a number and returns a string. The method should return the string 'positive' if the num is positive, 'negative' if the num is negative, and 'zero' if the num is zero.

def number_check(num)
  if num > 0
    return "positive"
  elsif num < 0
    return "negative"
  else
    return "zero"
  end
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"


# Write a method word_check(word) that takes in a word and returns a string. The method should return the string "long" if the word is longer than 6 characters, "short" if it is less than 6 characters, and "medium" if it is exactly 6 characters long.

def word_check(word)
  if word.length > 6
    return "long"
  elsif word.length < 6
    return "short"
  else
    return "medium"
  end
end

puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"


# Write a method count_e(word) that takes in a string word and returns the number of e's in the word

def count_e(word)
  puts word.count('e')
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3


# Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method 
def count_a(word)
  count = 0
  
  i = 0 
  while i < word.length
    char = word[i]
    
    if char == "a"
      count += 1
    
    elsif char == "A"
      count += 1
    end
    
    i += 1
  end
  
  return count
end
    
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3


# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u.

def count_vowels(word)
  count = 0 
  
  i = 0    
  while i < word.length
    char =  word[i]
        
    if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
      count += 1
    end

    i += 1
  end

  return count
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2


# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.

def sum_nums(max)
  sum = 0 

  i = 1
  while i <= max
    sum += i
    
    i += 1
  end 

  return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15


# Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num.

def factorial(num)
  product = 1 

  i = 1
  while i <= num
    product *= i
    
    i += 1
  end 

  return product
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
forwards = ""
backwards = ""
  
  i = 0
  while i < word.length
    char = word[i]
    forwards = forwards + char
    backwards = char + backwards

    i += 1
  end
  
  if forwards == backwards
    return "true"
  else
    return "false"
  end
end
    
puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

# OR

def is_palindrome(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed

    i += 1
  end

  if word == reversed
  return "true"
  else
    return "false"
  end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false