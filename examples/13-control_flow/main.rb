# Control Flow

if 1 == 1
  p "the universe hasn't shattered in two"
else
  p "identity is not equivalence - math has broken!"
end

## Ternary operators - the usual

p (1 == 1) ? "the universe hasn't shattered in two" :  "identity is not equivalence - math has broken!"

## Guards are AWESOME - use them
## Usually most helpful when flagging return or errors on the basis of some ()un)desired condition

if (1 == 1)
  #...
else
  raise Exception
end

## Can be simplified

raise Exception unless (1 == 1)
#...

## Guards can also be blocks

unless (1 == 1)
  p "identity is not equivalence - math has broken!"
  raise Exception
end
p "the universe hasn't shattered in two"

## Error Handling uses the Rescue keyword

begin
  raise Exception.new "I am thrown"
rescue Exception
  p "I am caught"
end

## Assign local variable name

begin
  raise Exception.new "I am thrown"
rescue => e
  p e.backtrace
end
