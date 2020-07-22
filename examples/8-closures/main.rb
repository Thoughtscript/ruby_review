# More Closures
## Closures include any of procs, lambdas, methods, functions, blocks

#-----------------------------------#

# Procs (functions)
## Lambda proc with no variable name
-> (arg) {p arg +1 }.call(2)

## Proc new keyword with no assignment
Proc.new {| n | p n + 111}.call(2)
## Proc new keyword with assignment
proc1 = Proc.new {| n | n ** 2}
p proc1.call(4)

## Proc from block
def make_proc(&block)
   block
end
proc2 = make_proc {|x| x+7 }
p proc2.call(4)

#-----------------------------------#

# Lambdas
## With variable name
varName = -> (arg){p arg + 1}
varName.call(2)

#-----------------------------------#

# Blocks
## Can be a method
def example1
  yield
end
example1{p 2+ 4}

def example2(&block)
  block.call
end
example2{p 5+ 8}

## Helpful for arrays
[1,2,3,4].each do |x|
  p x
end
[1,2,3,4].each{|x| p x}