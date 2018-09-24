# A method to reverse each word in a sentence, in place.
require 'pry'
def string_reverse(my_string)
  return if my_string == nil || my_string.length < 1
  i = 0 #first ele
  j = my_string.length - 1 #last ele
  while i < j # until position of first ele meets last, so there is the center element in between
    temp = my_string[i] #stores frist ele in temp
    my_string[i] = my_string[j] #sets first ele to the last ele's position
    my_string[j] = temp #sets last element to first ele's position
    i += 1 #increment
    j -= 1
  end
  return my_string
end

# "   evol  "

def reverse_words(my_words)
  # puts my_words
  unless my_words == nil || my_words.empty?
    last = 0
    first = 0
    until last == my_words.length - 1
      while my_words[first] == " " && first != my_words.length - 1
        first += 1
      end
      last = first
      while my_words[last] != " " && last != my_words.length - 1
        last += 1
      end
      if first == last || last == my_words.length - 1
        my_words[first..last] = string_reverse(my_words[first..last])
      else
        my_words[first..last - 1] = string_reverse(my_words[first..last - 1])
      end
      first = last
    end
  end
  # puts "finished #{my_words}"
end
#1, check if first character is " "
#check if the index to the right of it (the next highest index) is a space
#if true, that section is one word
# (the beginning and end of each word needs an index)
#once i find a since word section call string_reverse helper method on it
#else, continue incrementation +1

# "En gineer"
# "reenig nE"
#letter at index0 must swap with final index
#letter at index0 decrements index[0] -1
# so lets assign i = index[0] which is E
#so i = E
# index[i - 1] = -1
# j = index[length -1]
# so j = r
# the value in j should be assigned to the first position
# storage = index[0]
# j = storage
