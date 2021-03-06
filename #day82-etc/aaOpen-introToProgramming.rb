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


#Conditinonals

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


# Combining .split & .join = replacing characters

str = "follow the yellow brick road"
print str.split("l").join("Z")
puts


# Enumerables& Ranges

# Write a method to_initials that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
  parts = name.split(" ")
  initials = ""
  parts.each { |part| initials += part[0] }
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


# Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
  words = sent.split(" ")
  new_words = []

  words.each do |word|
    if word.length > 4
      new_word = abbreviate_word(word)
      new_words << new_word
    else
      new_words << word
    end
  end

  return new_words.join(" ")
end

def abbreviate_word(word)
  vowels = "aeiou"
  new_word = ""

  word.each_char do |char|
    if !vowels.include?(char)
      new_word += char
    end
  end

  return new_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


# Write a method format_name that takes in a name string and returns the name properly capitalized.

def format_name(str)
  names = str.split(" ")
  formatted_names = []
  
  names.each do |name|
    formatted_names << name[0].upcase + name[1..-1].downcase
  end

  return formatted_names.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.

def is_valid_name(str)
  parts = str.split(" ")
  if parts.length < 2
    return false
  end

  parts.each do |part|
    if !(part[0] == part[0].upcase && part[1..-1] == part[1..-1].downcase)
      return false
    end
  end

  return true
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.

def is_valid_email(str)
  parts = str.split("@")

  if parts.length != 2
    return false
  end

  first = parts[0]
  second = parts[1]
  alpha = "abcdefghijklmnopqrstuvwxyz"

  first.each_char do |char|
    if !alpha.include?(char)
      return false
    end
  end

  if second.split('.').length == 2
    return true
  else
    return false
  end
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed. Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.

def reverse_words(sent)
  letters = sent.split("")
  sent_array = []
  
  sent_array += letters
  
  reverse_sent_array = sent_array.reverse!
  
  new_sent = reverse_sent_array.join 
  new_words =  new_sent.split(" ")
  
  final_sent = new_words.reverse!
  
  print final_sent.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

#OR

def reverse_words(sent)
  words = sent.split(" ")
  new_words = []
  words.each { |word| new_words << word.reverse }
  new_sent = new_words.join(" ")
  return new_sent
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.

def rotate_array(arr, num)
  
  removed =  arr.pop(num)
  
  new_arr = removed += arr
  
  print new_arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts

# OR

def rotate_array(arr, num)
  num.times do
    ele = arr.pop
    arr.unshift(ele)
  end

  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts


# Nested Loops & 2d Arrays

# Write a method combinations that takes in an array of unique elements, the method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
  new_array = []
  
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx1
        new_array << [ele1, ele2]
      end
    end
  end
  
  return new_array
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


# Write a method opposite_count that takes in an array of unique numbers. The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
  count = 0
  
  nums.each_with_index do |ele1, idx1|
    nums.each_with_index do |ele2, idx2|
      if idx2 > idx1 && ele1 + ele2 == 0
      count +=1
      end
    end
  end
  print count
end
     
puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


# Write a method two_d_Sum that takes in a two dimensional array and returns the sum of all elements in the array.

def two_d_sum(arr)
  total = 0

  arr.each do |sub_array|
    sub_array.each do |num|
      total += num
    end
  end

  return total
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15


# Write a method two_d_translate that takes in a 2 dimensional array and translates it into a 1 dimensional array. You can assume that the inner arrays always have 2 elements. See the examples.

def two_d_translate(arr)
  new_arr = []

  arr.each do |subArray|
    ele = subArray[0]
    num = subArray[1]

    num.times { new_arr << ele }
  end

  return new_arr
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts


# Write a method array_translate that takes in an array whose elements alternate between words and numbers. The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
  new_arr = []
  
   array.each_with_index do |subArray, idx|
    if idx % 2 == 1
      subArray = ele
    else
      subArray = num
      
      #num.times { new_arr << ele }
    end
   end

    #return new_arr
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# Hashe

# Write a method get_double_age that takes in a hash and returns twice the "age" value of the hash.

ef get_double_age(hash)
  age = hash["age"]
  print age * 2
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46

# OR

def get_double_age(hash)
  return hash["age"] * 2
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46


# Write a method get_full_name that takes in a hash containing a first, last, and title. The method should return a string representing the hash's full name

def get_full_name(hash)
  first = hash["first"]
  last  = hash["last"]
  title = hash ["title"]
  
  print first + " " + last + " " + title
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"

# OR

def get_full_name(hash)
  return hash["first"] + " " + hash["last"] + ", the " + hash["title"]
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"


# Write a method word_lengths that takes in a sentence string and returns a hash where every key is a word of the sentence, and its' corresponding value is the length of that word.

def word_lengths(sentence)
  words = sentence.split(" ")
  lengths = {}

  words.each { |word| lengths[word] = word.length}

  return lengths
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}


# Write a method cat_builder that takes in a name, color, and age. The method should return a hash representing a cat with those values.

def cat_builder(name_str, color_str, age_num)
  return { "name"=>name_str, "color"=>color_str, "age"=>age_num }
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts


# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. Assume the string contains only lowercase characters.

def ae_count(str)
  count = {"a"=>0, "e"=>0}

  str.each_char do |char|
    if (char == "a" || char == "e")
      count[char] += 1
    end
  end

  return count
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}


# Write a method element_count that takes in an array and returns a hash representing the count of each element in the array.

def element_count(arr)
  
  counter = Hash.new(0)
    arr.each { |ele| counter[ele] += 1 }
    return counter
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}


# Write a method select_upcase_keys that takes in a hash and returns a new hash containing key-value pairs of the original hash that had uppercase keys. You can assume that the keys will always be strings.

def select_upcase_keys(hash)
  selected = {}

  hash.each do |k, v|
    if k == k.upcase
      selected[k] = v
    end
  end

  return selected
end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts


# Write a method hand_score that takes in a string representing a hand of cards and returns it's total score. You can assume the letters in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. The letters of the input string not necessarily uppercase.

def hand_score(hand)
  points = {
    "A"=>4,
    "K"=>3,
    "Q"=>2,
    "J"=>1
  }

  score = 0
  hand.each_char { |char| score += points[char.upcase] }
  return score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9


# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  count = Hash.new(0)
  string.each_char { |char| count[char] += 1 }

  frequents = []
  count.each do |char, num|
    if num > 2
      frequents << char
    end
  end
  return frequents
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts


# Write a method hash_to_pairs that takes in a hash and returns a 2D array representing each key-value pair of the hash.

def hash_to_pairs(hash)
  a = hash.keys
  b = hash.values
  
  print a.zip(b)
end

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts


print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts

# OR

def hash_to_pairs(hash)
  pairs = []
  hash.each { |key, val| pairs << [key, val] }
  return pairs
end

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts

print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts




