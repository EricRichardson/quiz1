# To write a method that doesn't mutate variables just make new variable to hold onto new objects. This is safer since you won't accidently modify a variable being used elsewhere.

def titilize(string)
  words = string.split(' ')
  capital_words = []
  words.each do |word|
    capital_words << word.capitalize
  end

  title_words = []
  title_words << capital_words[0]
  for i in 1...capital_words.length
    if capital_words[i] == "Or" || capital_words[i] == "From" || capital_words[i] == "To" || capital_words[i] == "And" || capital_words[i] == "In" || capital_words[i] == "The"
      title_words[i] = capital_words[i].downcase
    else
      title_words[i] = capital_words[i]
    end
  end
  title_words.join(' ')
end

puts titilize("hello world")
puts titilize("the brother's karamazov")
puts titilize("of the world and from the moon")
