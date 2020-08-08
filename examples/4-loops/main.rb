# Each loop
## Loops through each of the element in array using *each* and call update_score on it
## Assign a temporary variable to elements
arr = Array.new(4, "default_string")

arr.each do |element|
  puts(element)
end

for x in arr do
  p x
end

arr.map{|x| p x}

# While loop
## Note: Ruby has a couple variants that are helpful
## For example: until
x = 0
while x < 5 do
  x += 1
  puts(x)
end

x = 0
until x > 4 do
  x += 1
  puts(x)
end

# For loop
y = 0..10
for i in y
  puts(i)
end

# Enumerables
## Helpful methods for loops
## https://ruby-doc.org/core-2.7.1/Enumerable.html

a = [1,2,3,4,5,6]

## Check if at least one meets condition
a.any?{|x| p x.is_a?(Integer)}

## String arrays without having to split()
## Check if all meet condition
%w[cat dog mouse].all?{ |x| p x.length > 1 }

## Concat
## Must convert to array or desired iterable
p (1..3).chain([4, 5]).to_a
p [1,2,4].chain([2,3,4,5]).to_a

## Index looping
a.each_with_index { |item, index|
  p %Q(#{item} at index: #{index})
}

## Filtering
a.find_all { |i| p i unless i < 3}
p a.select { |i| i > 2}