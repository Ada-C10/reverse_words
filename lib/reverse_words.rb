require "pry"

# A method to reverse each word in a sentence, in place.

def string_reverse(my_string)
   if my_string == ""
     return my_string
   elsif my_string.nil?
     return nil
   else

     length = my_string.length
     count = length / 2
     count.times do |i|
       temp = my_string[i]
       my_string[i] = my_string[length - i - 1]
       my_string[length - i - 1] = temp
     end
   end
   return my_string
end


def reverse_words(my_words)
  if my_words.nil? || my_words == ""
    return my_words
  end

  words = my_words.chars
  length = words.length

  words_split = my_words.split(" ")
  split_length = words_split.length
  words_reversed = ""

  split_length.times do |i|
    temp = string_reverse(words_split[i])
    words_reversed = words_reversed + temp
  end

  space_count = 0

  length.times do |i|
    if words[i] == " "
      space_count = space_count + 1
    else
      my_words[i] = words_reversed[i - space_count]
    end
  end

  return my_words
end
