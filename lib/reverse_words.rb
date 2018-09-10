# A method to reverse each word in a sentence, in place.
# Time Complexity: O(n) * O(3n) = O(n^2)
# Space Complexity: O(1), aside from a few variables up front and temp,
# no additional space is used (swap is happening "in place")

# Consider other algorithms to decrease Time Complexity.
# Would Time Complexity be a trade off of Space Complexity?

def reverse_words(my_words)
  return nil if my_words == nil

  i = 0
  m = 0
  j = my_words.length

  while i < j do

    while my_words[i] != " " && i != j do
      i += 1
    end

    k = i
    while m < k do
      temp = my_words[m]
      my_words[m] = my_words[k - 1]
      my_words[k - 1] = temp
      m += 1
      k -= 1
    end

    while my_words[i] == " "
      i += 1
    end

    m = i
  end

  return my_words
end
