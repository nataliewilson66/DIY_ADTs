class Map

  def initialize
    @ivar = Array.new { Array.new }
  end

  def set(key, value)
    @ivar.each do |pair|
      if pair[0] == key
        pair[1] = value
        return
      end
    end
    @ivar << [key, value]
  end

  def get(key)
    @ivar.each do |pair|
      return pair[1] if pair[0] ==  key
    end
    return nil
  end

  def delete(key)
    value = get(key)
    @ivar.delete([key, value]) if value != nil
  end

  def show
    @ivar.each do |pair|
      puts "#{pair[0]} => #{pair[1]}"
    end
  end

end

my_map = Map.new
my_map.set("a", 1)
my_map.set("b", 2)
my_map.set("c", 3)
my_map.set("z", 26)
my_map.show
puts my_map.get("z")
puts my_map.get("d")
my_map.delete("c")
my_map.show