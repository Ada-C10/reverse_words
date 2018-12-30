def string_reverse(my_string)
  return nil if my_string == nil
  mid = my_string.length / 2
  last = my_string.length - 1
  temp = ""
  i = 0
  while i < mid
    temp = my_string[i]
    my_string[i] = my_string[last - i]
    my_string[last - i] = temp
    i += 1
  end
  return temp
end
