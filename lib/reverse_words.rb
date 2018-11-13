# Time: O(n)
# Space: O(1)
def reverse_words(message)
  return nil if !message
  raise ArgumentError if message.class != String

  i = 0
  while i < (message.length - 1)

    until message[i] != " " || i == (message.length - 1)
      i += 1
    end
    j = i
    until message[j + 1] == " " || j == (message.length - 1)
      j += 1
    end

    message[i..j] = reverse_string_in_place(message[i..j])
    i = j+1 #first space after letter
  end

  return message
end

# Time: O(n)
# Space: O(1)
def reverse_string_in_place(string)
  return nil if !string
  raise ArgumentError if string.class != String

  n = string.length
  i = 0
  j = n-1
  while i < j

    placeholder = string[j]
    string[j] = string[i]
    string[i] = placeholder

    i += 1
    j -= 1
  end
  return string
end

# Previous (all-in-one) solutino:
# Time: O(n)
# Space: O(1)
# def reverse_words(my_words)
#   if my_words.nil?
#     return nil
#   else
#     i = 0
#     until my_words[i] == nil
#       if my_words[i] != " "
#         k = i
#         until my_words[k] == " " || my_words[k] == nil
#           k += 1
#         end
#         j = k-1
#         while i < j
#           memo = my_words[i]
#           my_words[i] = my_words[j]
#           my_words[j] = memo
#           i = i+1
#           j = j-1
#         end
#         i = k+1
#       else
#         i += 1
#       end
#     end
#     return my_words
#   end
# end
