
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  return my_words if my_words.nil?

  return my_words if my_words.length <= 1

  i = 0
  j = my_words.length
  n = 0

  j.times do |index|
    if (my_words[index] == " " && index != 0) || index == j - 1
      k = 0
      if index == j - 1
        k = index
      else
        k = index - 1
      end

      my_words[i..k] = reverse_word(my_words[i..k])
      i =  index + 1
    end
  end

  return my_words

end

def reverse_word(string)
  i = 0
  j = string.length - 1
  n = 0
  while i < j
    n = string[i]
    string[i] = string[j]
    string[j] = n
    j -= 1
    i += 1
  end
  return string
end
