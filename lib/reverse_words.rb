require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  unless my_words.nil?
    words = my_words.split(/(\S+)/)
    
    words.map! do |word|
      string_reverse(word)

    end

    new_words = words.join

    my_words.length.times do |i|
      my_words[i] = new_words[i]
    end
  end
end


def string_reverse(my_string)

  unless my_string.nil?  || my_string.length < 2
    length = my_string.length

    (length/2).times do |i|
      tmp = my_string[length - i - 1]
      my_string[length - i - 1] = my_string[i]
      my_string[i] = tmp
    end
  end

  return my_string

end


test_string = "hello, world"
reverse_words(test_string)

puts test_string
