# A method to reverse each word in a sentence, in place.
# Each word will need its letters reversed
def reverse_words(str)
  # return nil if str.nil?
  return nil if str.nil?
  # Return empty string if length is zero
  return "" if str.length == 0

  # Empty string
  rev_str = ""
  i = -1
  while str[i] != nil
    rev_str += str[i]
    i = i - 1
  end
  return rev_str
end

# Time = O(n) - Goes through entire array
# Space - O(n) - We're creating another array in memory 

test_string = "Engineer"
# p reverse_words(nil)

p reverse_words(test_string)

# Time Complexity
# Is going through half the array, depends on input length O(n)

# Space Complexity
# Is reversing in place/always will use the same number of variables = O(1)
