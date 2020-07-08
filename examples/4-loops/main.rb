# Each loop
## Loops through each of the element in array using *each* and call update_score on it
## Assign a temporary variable to elements
arr = Array.new(4, "default_string")
arr.each do |element|
  puts(element)
end

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