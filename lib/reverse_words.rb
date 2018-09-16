# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  # EXAMPLE: my_words = "I can be an engineer"

  if my_words.length == 0
    return nil
  end

  if my_words.length == 1
    return my_words
  end

  # Keeping track of space indexes
  #EXAMPLE: spaces = [1,5,8,11,12]
  spaces = []
  j = 0
  while j < my_words.length
    if my_words[j] == " "
      spaces << j
    end
    j += 1
  end

  # Reads from the end of the my_words string
  # EXAMPLE: temp_string = "reenigne na eb nac I"
  temp_string = ""
  i = 1
  while i <= my_words.length
    temp_string << my_words[my_words.length - i]
    i += 1
  end

  # Extracting words from temp_string
  # EXAMPLE: words = ["reenigne", "na", "eb", "nac", "I"]
  words = temp_string.split(" ")

  # Putting words together from 'words' without spaces, in reverse
  # EXAMPLE: smooshed_words = "inacebnareenigne"
  smooshed_words = ""
  k = 1
  while k <= words.length
    smooshed_words << words[words.length - k]
    k += 1
  end

  # Putting spaces between the 'smooshed_words' string
  # EXAMPLE: new_string = "I nac eb na reenigne"
  new_string = ""
  new_string_index = 0
  smooshed_words_index = 0
  spaces_index = 0
  while smooshed_words_index < smooshed_words.length
    if new_string_index != spaces[spaces_index]
      new_string << smooshed_words[smooshed_words_index]
      new_string_index += 1
      smooshed_words_index += 1
    else
      new_string << " "
      new_string_index += 1
      spaces_index += 1
    end
  end

  return new_string
  end

test = reverse_words("Engineer")
puts "#{test}"
