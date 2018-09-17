# 1. Determine the starting index of a word and the index of the last character in that word (the next character will be a ' ' i.e. a space, or it would be the last character in the string)
# 2. Call a helper method passing in the original input string, starting index and ending index of the current word.
# 3. The helper method reverses all the characters from starting index to ending index.

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words[0]
end


example = "I wanna understand this"
puts reverse_words(example)
