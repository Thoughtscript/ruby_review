require "./dependency.rb"
# Imports are made possible by an explicit require statement
## No import affix required
## Use relative filepath syntax to locate file if not using a module

puts(exportedMethod(1,2,3))

x = Example.new(1)
x.name = "hello"
puts(x.name)
puts(x.getObjectIdOne)
puts(x.getName)