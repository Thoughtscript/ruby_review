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