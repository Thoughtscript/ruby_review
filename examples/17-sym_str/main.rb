# Ruby symbols and strings

## Comparison - these are not the same
a = 'hello'
b = :hello
p a == b

## Hash - different keys
x = Hash[]
x['a'] = 1
x[:a] = 2
p x['a'] == x[:a]
p x

## Via try
y = Hash[]
y['b'] = { 'c' => 100 }
p y
p y['b']['c']
p y[:b]&.try(:c)

## Convert
p :a.to_s
p 'a'.to_sym
