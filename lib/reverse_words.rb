require 'pry'

def string_reverse(my_string)
  if my_string == nil || my_string.length == 0
    return my_string
  end
  array = my_string.split("")
  length = array.length
  i = 0
  j = (length - 1)
  holding = nil
  while i < j
    holding = array[i]
    array[i] = array[j]
    array[j] = holding
    i += 1
    j -= 1
  end
  joined_array = array.join("")
  return joined_array
end

def reverse_words(my_words)
  sentence = []
  my_words.split.each do |word|
    sentence << word
  end

  reversed = []
  sentence.each do |word|
    reversed << string_reverse(word)
  end

  final = ""
  reversed.each do |word|
    final << word + " "
  end
  return final

end

# example = reverse_words("I strive to engineer the most efficient solutions.")
# puts example
