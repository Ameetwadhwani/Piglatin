# piglatin:


# attempt 1
  
# rescue Exception => e
  
# end
# loop do
#   print "Enter a word: "
#   a = gets.chomp
#   if a != 'quit'.downcase
#     puts a.downcase
#   else
#     break
#   end
#   puts "Thank you bye-bye"
# end



# attempt 2

# while a != 'quit'.downcase
#   print "Enter a word: "
#   a = gets.chomp
# end

# # attempt 3

# print "Enter a word: "
# a = gets.chomp
# while a != 'quit'.downcase
#   print "Enter a word: "
#   a = gets.chomp
# end
# # success

# attempt 4

# print "Enter a word: "
# a = gets.chomp
# while a != 'quit'.downcase
#   puts "This translates to #{a} in pig latin" # change this to pig latin later
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
# #success


# # attempt 5 - create a class method and a class method

# class Piglatin

#   def self.convert(word)
#     word.reverse # just performing an operation on the word 
#   end

# end 

# print "Enter a word: "
# a = gets.chomp
# while a != 'quit'.downcase
#   puts "This translates to #{Piglatin.convert(a)} in pig latin" # change this to pig latin later
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
#success 

# # attempt 6 - implement convert method by changing the method from .reverse to XX


# # P E N G U I N
# # 0 1 2 3 4 5 6


# class Piglatin

#   def self.convert(word)
#     word = word[1..-1] + word[0] + "ay" #reassign the order of the word then append with "ay"

#   end


# end 

# print "Enter a word: "
# a = gets.chomp
# while a != 'quit'.downcase
#   puts "This translates to #{Piglatin.convert(a)} in pig latin" 
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
# #success


# attempt 7 - add the conditional for vowels

# class Piglatin
#   def self.convert(word)
#     word = word[1..-1] + word[0] + "ay" 
#   end

#   def converter(words)
#     word_list = words.split(" ")
#     word_list.each { |word| self.convert(word) }
#     word_list.join(" ")
#   end
# end 

# print "Enter a word: "
# a = gets.chomp
# until a == 'quit'.downcase
#   if a[0] =~ /[aeiou]/
#     puts "In pig latin, this translates to: #{a}"
#   else
#     puts "In pig latin, this translates to: #{Piglatin.convert(a)}"
#   end
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
# does not account for multiple word strings

# attempt 8 - account for multiple words including words anywhere in the string that begin with vowels
# change the 'driver program' to remove the logic to check if the first letter is a vowel into the convert method

# class Piglatin
#   def self.convert(word)
#     if word[0] =~ /[aeiou]/
#       word
#     else
#       word = word[1..-1] + word[0] + "ay" 
#     end
#   end

#   def converter(words)
#     word_list = words.split(" ")
#     word_list.each { |word| self.convert(word) }
#     word_list.join(" ")
#   end
# end 

# print "Enter a word: "
# a = gets.chomp
# until a == 'quit'.downcase
#   puts "In pig latin, this translates to: #{Piglatin.convert(a)}"
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
# works - but still need to apply to all words in the sentence


# attempt 9 - account for multiple words including words anywhere in the string that begin with vowels
# split the string into words and apply the logic to each word

# class Piglatin
#   def self.convert(word)
#     if word[0] =~ /[aeiou]/
#       word
#     else
#       word = word[1..-1] + word[0] + "ay" 
#     end
      
#   end

#   def self.converter(words)
#     word_list = words.split(" ")
#     word_list.each { |word| self.convert(word) }
#     word_list.join(" ")
#   end
# end 

# print "Enter a word: "
# a = gets.chomp
# until a == 'quit'.downcase
#   puts "In pig latin, this translates to: #{Piglatin.converter(a)}"
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
# does not perform function on any of the words

# attempt 10 - account for multiple words including words anywhere in the string that begin with vowels
# split the string into words and apply the logic to each word
# re-order the function

# class Piglatin

# def self.converter(words)
#     word_list = words.split(" ")
#     word_list.each { |word| self.convert(word) }
#     word_list.join(" ")
#   end

#   def self.convert(word)
#     if word[0] =~ /[aeiou]/
#       word
#     else
#       word = word[1..-1] + word[0] + "ay" 
#     end
#  end   
# end 

# print "Enter a word: "
# a = gets.chomp
# until a == 'quit'.downcase
#   puts "In pig latin, this translates to: #{Piglatin.converter(a)}"
#   print "Enter another word or type 'quit' to exit: "
#   a = gets.chomp
# end
# - this is more advanced than we need to do for the assignment - revisit when time permits


# attempt 11 - revert to working condition.
# fixed the self.converter function, it needs to use COLLECT instead of EACH
# each just iterates through the list, whereas collect iterates through the list and applies a method to each element

class Piglatin
  def self.convert(word)
    if word[0] =~ /[aeiou]/
      word
    else
      word = word[1..-1] + word[0] + "ay" 
    end
  end 

  def self.converter(words)
    words.split(" ").collect { |word| Piglatin.convert(word) }.join(" ")
  end
end 

print "Enter a word: "
word = gets.chomp
until word == 'quit'.downcase
  puts "Translated: #{ Piglatin.converter(word) }"
  print "Enter another word or type 'quit' to exit: "
  word = gets.chomp
end




