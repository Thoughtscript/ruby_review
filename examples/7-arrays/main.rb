# Initialize empty arrays
array_one = []
array_two = Array.new

# Initialize arrays with nils
array_three = Array.new(3)

# Initialize arrays with custom default values
array_four = Array.new(10, "default")
array_five = Array.new(10, 0)
# puts array_five

# Initialize arrays with custom objects
array_six = Array.new(4) {Hash.new}
# puts array_six

# Get first and last indicies
array_seven = [1,2,3,4,5]

puts array_seven.first
puts array_seven.last
puts array_seven[0]
puts array_seven[array_seven.length-1]

# Get slices
array_eight = [100,200,300,400,500]
## Inclusive
range = 0..2
puts array_eight[range]
## Exclusive
range = 2 ... 4
puts array_eight[range]

# Operations
array_nine = ["a", "b", "c"]
array_nine.insert(1, "d")
array_nine.push("e")
array_nine.unshift("f")
puts array_nine

# Math
p [1,2,3] * 3
## [1,2,3,1,2,3,1,2,3]
p [1,2,3] + [4,5]
## [1,2,3,4,5]