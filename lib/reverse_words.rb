# A method to reverse each word in a sentence, in place.
# Each word will need its letters reversed
def reverse_single_word(string, start_index, end_index)
  # return nil if str.nil?
  return nil if string.nil?
  # Return empty string if length is zero
  return "" if string.length == 0

  while start_index < end_index
    temp = string[start_index]
    string[start_index] = string[end_index]
    string[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return string
end

# Time = O(n) - Goes through entire array
# Space - O(n) - We're creating another array in memory

def reverse_words(my_words)
  # Return if string is nil or empty
  return if my_words.nil? || my_words.empty?
  # Start index at 0
  i = 0
  # Wihle index is less than length of string
  while i < my_words.length
    # Entering first while loop for if tehre's a space
      # If index is a space and less than length, add 1
    while my_words[i] == " " && i < my_words.length
      i += 1
    end
    # When it's no longer a space, start a word
    start_index = i

    # Entering second while loop for if it's not a space
      # Find word's end by checking if index is not a  space
    while my_words[i] != " " && i < my_words.length
      # If so, increase index by one
      i += 1
    end
    # Set end of word
    end_index = i - 1

    # Reverse word via helper method
    reverse_single_word(my_words, start_index, end_index)
  end

  # Return original string
  return my_words
end

# Space Complexity
# You will always need same variables regardless of input size
# So would it be O(1)?

# Time Complexity
# Is going through entire string so O(n)


# Alternative Way - Space Complexity is too big O(n)
# def string_reverse(str)
#   reversed = "";
#   str.chars.each { |char| reversed = char + reversed  }
#   return reversed
# end

# Space Complexity
# Creates a new array the length of the string = O(n)

# Time Complexity
# Goes through entrie array = O(n)


# Time Complexity
# Is going through half the array, depends on input length O(n)

# Space Complexity
# Is reversing in place/always will use the same number of variables = O(1)
