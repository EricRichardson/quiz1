# A stack is a data structure that uses a last in first out order of processing. Just like a stack of dishes, the last dish put on will be the first one grabbed.

# A queue is a data structure that uses a first in first out order of processing. Like a line up at a store. The first person in line will be the first person served.

class Stack

  def initialize
    @stack = []
  end

  def add(item)
    @stack.push(item)
  end

  def remove
    @stack.pop
  end
end

class Queue

  def initialize
    @queue = []
  end

  def add(item)
    @queue.push(item)
  end

  def remove
    @queue.shift
  end
end

puts("\nStack test")
s = Stack.new
s.add(1)
s.add(2)
s.add(3)
p s

p s.remove
p s

puts("\nQueue test")
q = Queue.new
q.add(1)
q.add(2)
q.add(3)
p q

p q.remove
p q
