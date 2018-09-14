
#Algorithm Plan:
#starting index set to 0, loop through until you reach a space to indicate the end of a word
#record that index as an indicator of where the word ends and take the starting index
#using index of where word starts and ends reverse letters in place (like previous reverse word or reverse array)
#execute until your last index count has passed the end of the array, so until i -1 == nil

# Time complexity is O(n^2) because we have two nested loops. For each item in
# the array we will have to loop through up to n set of other letters in the array
# to determine word length, then we will have to loop through each letter in the
# word (also up to n or technically n/2 but the /2 part is dropped for that loop).
# O(n^2) makes the time complexity quadratic.

#Space complexity is O(1), or constant, because we do not need to store a new array in memory
# no matter how long the string we only need to store the 4 variable values. 


def reverse_words(my_words)
  return nil if my_words == nil

  i = 0
  j = 0
  until my_words[i-1] == nil

    if my_words[i] == " "

      m = j
      k = (i - 1)
      while m < k
        temp = my_words[m]
        my_words[m] = my_words[k]
        my_words[k] = temp
        m += 1
        k -= 1
      end
      j = i + 1

    end
    i += 1

  end

  return my_words
end
