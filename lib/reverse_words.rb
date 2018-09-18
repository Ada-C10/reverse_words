# A method to reverse each word in a sentence, in place.
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

def reverse_words(my_words)
  unless my_words == nil || my_words.empty?
    my_words.
    string_reverse(my)
end



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
