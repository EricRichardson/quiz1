require "benchmark"

def even_numbers_loop(n)
  evens = []
  i = 2
  n.times do
    evens << i
    i += 2
  end
  evens
end

def even_numbers_rec(n, i=1)
  if n == i
    return (i*2).to_s
  else

    return (i*2).to_s + ' ' + even_numbers_rec(n, i+1)
  end
end

# # Tests for loop
# puts "\nTests for loop"
# puts "The first even number is: " + even_numbers_loop(1).to_s
# puts "The first 4 even numbers are: " + even_numbers_loop(4).to_s
# puts "The first 10 even number are: " + even_numbers_loop(10).to_s
# puts "The first 100 number are: " + even_numbers_loop(100).to_s
#
# # Tests for recursion
# puts "\nTests for recursion"
# puts "The first even number is: " + even_numbers_rec(1)
#
# puts "The first 4 even numbers are: " + even_numbers_rec(4)
#
# puts "The first 10 even number are: " + even_numbers_rec(10)
#
# puts "The first 100 number are: " + even_numbers_rec(100)

Benchmark.bm do |x|
  puts "\nLoop benchmark"
  x.report do
    100_000.times do
      even_numbers_loop(100)
    end
  end

  puts "\nRecursion benchmark"
  x.report do
    100_000.times do
      even_numbers_rec(100)
    end
  end
end
# Results
# Loop benchmark
#    0.860000   0.020000   0.880000 (  0.877933)
#
# Recursion benchmark
#    5.620000   0.040000   5.660000 (  5.753204)

# My recursive method takes signfigantly longer than my loop method. I suspect this is because I am calling to_s in my recursive method to construct my return value. I found from the assignments recursive is often slower than the loop method which I suspect is due to the overhead associated with calling and returning from functions. I never saw this order of magnitude difference however and that is why I think the to_s method is also playing a role. 
