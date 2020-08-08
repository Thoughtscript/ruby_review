# Methods
## Last line is automatically returned
## No explicit return type needed

def scoring(x, y)
  x + y
end

## It can be added however

def add(x, y)
  return x + y
end

puts(scoring(1,2))
puts(add(1,4))

## Parameterization - key arguments

def order_irrelevant_key_args(arg1:, arg2:, arg3:)
  arg1 + arg2 + arg3
end

p order_irrelevant_key_args(arg1:1, arg3: 2, arg2: 3)
p order_irrelevant_key_args(arg3: 2, arg2: 3, arg1:3,)

def order_irrelevant_optional_key_args(arg1:, arg2:1, arg3:2)
  arg1 + arg2 + arg3
end

p order_irrelevant_optional_key_args(arg1:1)
p order_irrelevant_optional_key_args(arg1:1, arg3:5)

## Parameterization - arguments

def order_matters(arg1, arg2, arg3)
  arg1 + arg2 + arg3
end

p order_matters(1,2,3)

def order_matters_optional(arg1 = 1, arg2 = 2, arg3)
  arg1 + arg2 + arg3
end

p order_matters_optional(3)

## Parameterization - optional (as arr)

## Logically, this order of args is required
## Standard args occur first (and ordering matters)
## It also looks for any key args
## The remainder are optional and specified by * (... in JS)
def optional(arg1, *opt, arg2:)
  total =  arg1 + arg2
  opt.each{|x| total = total + x }
  total
end

p optional(1,2,3,4, arg2: 5)





