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
    pair = @map.find { |element| element[0] == key}
    pair ? pair[1] = value : @map << [key, value]
    [key, value]
  end

  def lookup(key)
    @map.each { |element| return element[1] if element[0] == key}
    nil
  end

  def remove(key)
    element = @map.find { |element| element[0] == key }
    @map.delete(element)
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(array)
    array.map{ |element| element.is_a?(Array) ? deep_dup(element) : element}
  end
end
