class Stack
  
  def initialize
    @ivar = []
  end

  def push(el)
    @ivar.push(el)
  end

  def pop
    @ivar.pop
  end

  def peek
    @ivar.last
  end

end

pancakes = Stack.new
pancakes.push("buttermilk")
pancakes.push("blueberry")
pancakes.push("chocolate chip")
puts pancakes.peek
pancakes.pop
puts pancakes.peek
pancakes.push("maple")
puts pancakes.peek
pancakes.pop
pancakes.pop
puts pancakes.peek
