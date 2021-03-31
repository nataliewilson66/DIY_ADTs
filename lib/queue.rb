class Queue

  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar.push(el)
  end

  def dequeue
    @ivar.shift
  end

  def peek
    @ivar.first
  end

end

line = Queue.new
line.enqueue("Kate")
line.enqueue("Fran")
line.enqueue("Miranda")
puts line.peek
line.dequeue
puts line.peek
line.enqueue("Natalie")
line.dequeue
line.dequeue
puts line.peek
line.enqueue("Christina")
puts line.peek