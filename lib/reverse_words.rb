# A method to reverse each word in a sentence, in place.

def reverse_words(my_string)
  return nil if my_string == nil
  i = 0
  j = 0
  until my_string[i - 1] == nil

    if my_string[i] == nil || my_string[i] == " "

      z = j
      x = (i - 1)


      while z < x
        temp_variable = my_string[z]
        my_string[z] = my_string[x]
        my_string[x] = temp_variable

        z += 1
        x -= 1
      end
      j = i + 1
    end
    i += 1
  end
  return my_string
end
