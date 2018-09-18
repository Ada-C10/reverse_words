# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  starting = 0
  ending = 0
  # put in a case for nil no word
  while my_words != nil && ending <= my_words.length
    if my_words[ending] == ' ' || ending == my_words.length
      front_index = starting
      back_index = ending - 1
      while front_index < back_index
        random_variable = my_words[front_index]
        my_words[front_index] = my_words[back_index]
        my_words[back_index] = random_variable
        front_index += 1
        back_index -= 1
      end
      starting = ending + 1
    end
    ending += 1
  end
end
