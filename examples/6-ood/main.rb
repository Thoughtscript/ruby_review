# See: https://launchschool.com/books/oo_ruby/read/inheritance

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def initialize(name, color)
    super(name)
    @color = color
  end

  def speak
    super + " from GoodDog class"
  end
end

class BadDog < Animal
  def speak
    super + " from BadDog class"
  end
end

sparky = GoodDog.new("sparky", "red")
puts sparky.speak
puts sparky.name

barky = BadDog.new("barky")
puts barky.speak
puts barky.name