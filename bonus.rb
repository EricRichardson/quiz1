# You can use a regex. I got the part \b(?<!['â`])[a-z] from http://apidock.com/rails/ActiveSupport/Inflector/titleize I then added a negative look ahead to ignore the words we want to leave downcase. This solution should run faster than my old one, albeit harder to read. I then upcase the first letter and add the rest of the string to ensure the first letter is capitalized no matter what. If we did not want this w could take out this line.

def titilize(string)
s = string.gsub(/(?!or|from|to|and|in|the|of)\b(?<!['])[a-z]/) { $&.capitalize }
s[0].upcase + s[1..-1]
end

puts titilize("hello world")
puts titilize("the brother's karamazov")
puts titilize("of the world and from the moon")
