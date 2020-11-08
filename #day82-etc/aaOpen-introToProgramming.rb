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


#Conditinoals

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


#Loops

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


# Arrays

# Write a method doubler(numbers) that takes an array of numbers and returns a new array where every element of the original array is multiplied by 2.

def doubler(numbers)
  doubled_nums = []

  i = 0
  while i < numbers.length
    doubled_nums << numbers[i] * 2
    
    i += 1
  end

  return doubled_nums
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]


# Write a method yell(words) that takes in an array of words and returns a new array where every word from the original array has an exclamation point after it.

def yell(words)
  yelling = []
  
  i = 0
  while i < words.length
    yelling << words[i] +"!"
    
    i += 1
  end
  
  return yelling
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]


# Write a method element_times_index(nums) that takes in an array of numbers and returns a new array containing every number of the original array multiplied with its index.

def element_times_index(numbers)
  multiplied_numbers = []
  
  i = 0
  while i < numbers.length
    multiplied_numbers << numbers[i] * i
    
    i += 1
  end
  
  return multiplied_numbers
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


# Write a method even_nums(max) that takes in a number max and returns an array containing all even numbers from 0 to max

def even_nums(max)
  even_array = []
  
  i = 0
  while i <= max
    if i % 2 == 0
      even_array << i
    end
    
    i +=1
  end
    
  return even_array
end
    
print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]


# Write a method range(min, max) that takes in two numbers min and max. The method should return an array containing all numbers from min to max inclusive.

def range(min, max)
  all_numbers = []
  
  i = min
  while i <= max
    all_numbers << i
    
    i += 1
  end
  
  return all_numbers
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]


# Write a method odd_range(min, max) that takes in two numbers min and max. The method should return an array containing all odd numbers from min to max (inclusive).

def odd_range(min, max)
  odd_numbers = []
  
  i = min
  while i <= max
    if i % 2 == 1
      odd_numbers << i
    end
    
    i += 1
  end
  
  return odd_numbers
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]


# Write a method reverse_range(min, max) that takes in two numbers min and max. The function should return an array containing all numbers from min to max in reverse order. The min and max should be excluded from the array

def reverse_range(min, max)
  reverse_numbers = []
  
  i = max - 1
  while i > min
    reverse_numbers << i
    
    i -= 1
  end
  
  return reverse_numbers
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts


# Write a method first_half(array) that takes in an array and returns a new array containing the first half of the elements in the array. If there is an odd number of elements, return the first half including the middle element.

def first_half(array)
  elements = []
  
  i = 0
  while i <= array.length / 2.0
    elements << array[i]
    
    i += 1
  end
  
  return elements
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

# Write a method factors_of(num) that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num.

def factors_of(num)
  divide_by = []
  
  i = 1
  while i <= num
    if num % i == 0
      divide_by << i
    end
    
    i += 1
  end
  
  return divide_by
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]


# Write a method select_odds(numbers) that takes in an array of numbers and returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
  odd_numbers = []
  
  i = 0
  while i < numbers.length
    if numbers [i] % 2 == 1
      odd_numbers << numbers [i]
    end
    
    i += 1
  end
  
  return odd_numbers
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []


# Write a method select_long_words(words) that takes in an array of words and returns a new array containing all of the words of the original array that are longer than 4 characters.

def select_long_words(words)
  long_words = []
  
  i = 0
  while i < words.length
    if words[i].length > 4
      long_words << words[i]
    end
    
    i += 1
  end
    
  return long_words
end
  
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])  


# Write a method sum_elements(arr1, arr2) that takes in two arrays. The method should return a new array containing the results of adding together corresponding elements of the original arrays. You can assume the arrays have the same length.

def sum_elements(arr1, arr2)
  sum_array = []
  
  i = 0
  while i < arr1.length
    sum_array << arr1[i] + arr2[i]
    
    i += 1
  end
    
  return sum_array
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]


# Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers greater than 0 and less than max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
  new_array = []
  
  i = 0
  while i <= max
    if (i % 4 == 0 && i % 6 != 0) || (i % 6 == 0 && i % 4 != 0)
      new_array << i
    end
    
    i += 1
  end
  
  return new_array
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]

#OR

def fizz_buzz(max)
  nums = []

  i = 0
  while (i < max)
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      nums << i
    end

    i += 1
  end

  return nums
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]












