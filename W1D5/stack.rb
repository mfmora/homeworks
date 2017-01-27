class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queve

  def initialize
    @queve = []
  end

  def enqueve(el)
    @queve << el
  end

  def dequeve
    @queve.shift
  end

  def show
    @queve.dup
  end
end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    changed = false
    @map.each do |element|
      next unless element[0] == key

      changed = true
      element[1] = value
    end
    @map << [key,value] unless changed
  end

  def lookup(key)
    @map.find { |element| element[0] == key}
  end

  def remove(key)
    element = @map.find { |element| element[0] == key }
    @map.delete(element)
  end

  def show
    @map
  end
end
