# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  #split string into array of words
  return my_words if my_words.nil?

  separated_words = Array.new
  var = ""
  my_words.length.times do |x|
    if my_words[x] != " "
      var += my_words[x]
    else
      separated_words << var
      separated_words << my_words[x]
      var = ""
    end
  end
  separated_words << var

  reversed_string = ""
  separated_words.each do |word|
    reversed_string += string_reverse(word)
  end
  my_words = reversed_string
  return my_words
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

test_string = "hello, world"

print reverse_words(test_string)
