# I capitalize the first word no matter what it is. If you wanted the first word to be small case if it was the, or, etc. change the 1 in the for loop to 0

module HelperMethods

  def titilize(string)
    words = string.split(' ')
    words.each do |word|
      word.capitalize!
    end

    for i in 1...words.length
      if words[i] == "Or" || words[i] == "From" || words[i] == "To" || words[i] == "And" || words[i] == "In" || words[i] == "The"
        words[i] = words[i].downcase
      end
    end
    words.join(' ')
  end
end

# Tests
include(HelperMethods)

puts titilize("hello world")
puts titilize("the brother's karamazov")
puts titilize("of the world and from the moon")
