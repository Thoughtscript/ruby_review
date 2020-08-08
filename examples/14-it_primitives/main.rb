# Ruby Primitive Iterables

## Ruby has three primary Iterables

## Hashes - Named Key - Value (e.g. Objects in JS, dicts in Python)

hash_example = {}
hash_example = Hash.new
hash_example = Hash[]

hash_example["yo"] = "plait"
p hash_example["yo"]

## Arrays - expand in length

arr_example = Array.new()
arr_example = []
arr_example.push(1)
arr_example.push(2)
arr_example.push(3)
p arr_example.first
p arr_example.last

## Ranges - used primarily in loops

(1..10).each do |x|
  p x
end

range1 = (1..2)

for x in range1 do
  p x
end

range1.map{|x| p x}