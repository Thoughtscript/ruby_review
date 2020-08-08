# Modules
## Classes can be instantiated - akin to Structs, Prototypes, or Classes in Go, Java, JS
## Modules organize code and can be mixins (inlcuding attributes and fields) or just methods
## Modules are similar to Packages in NPM or Java

## Module

module Example_One
  def method_one()
    p 'hello world!'
  end
end

## Example_One is now part of Example_Two

module Example_Two
  include Example_One
  attr_accessor :example_field

  def method_two()
    @example_field = 1111
    p @example_field
  end
end

## Example_One and Example_Two are now part of Example_Three

class Example_Three
  include Example_Two
  def method_three()
    p self.example_field
  end
end

x = Example_Three.new
x.method_one
x.method_two
p x.example_field
x.method_three