require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  #split string into array of words
  return my_words if my_words.nil?

  new_string = ""
  var = ""

  my_words.length.times do |x|
    if my_words[x] != " "
      var += my_words[x]
    else
      new_string += string_reverse(var)
      new_string += my_words[x]
      var = ""
    end
  end
  new_string += string_reverse(var)

  my_words.length.times do |x|
    my_words[x] = new_string[x]
  end

end

def string_reverse(my_string)
  return my_string if my_string.nil?

  return my_string if my_string.length <= 1

  i = 0
  j = my_string.length - 1
  b = 0
  while i < j
    b = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = b
    i += 1
    j -= 1
  end
  return my_string
end

# test_string = "I like  tomatoes"
#
# print reverse_words(test_string)
