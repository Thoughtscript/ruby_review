# Ruby Safe Navigation

## Nil examples - basic
n = nil
p n
p n.nil?

hash_example = Hash[]
hash_example['a'] = n
hash_example[:b] = 100
### hash_example ] { 'a' => nil }
### Not customized class instantiations and lack attr_accessor, attr_reader
p hash_example['a']
p hash_example[:a]

begin
  p hash_example['a']['b']
rescue Exception
  p "hash_example['a']['b'] throws an exception"
end

## Accessed by safe navigation operator
### This returns nil not true
p n&.nil?

### Correct
p hash_example['a']&.try(:b)
p hash_example['a']&.try(:[], :b)

## Using class instantiantions
### Classes with accessible fields
class Person
  attr_accessor :name, :age, :note

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Note
  attr_accessor :text

  def initialize(text)
    @text = text
  end
end

### Examples
person = Person.new(nil, nil)
p person
p person.name

begin
  p person.try('name')
rescue Exception
  p "person.try('name') throws an exception (because it's not a method)"
end

begin
  p person.note.text
rescue Exception
  p "person.note.text throws an exception"
end

p person.note&.text
p person.note&.try(:[], :text)
note = Note.new(nil)

begin
  p person.note.text
rescue Exception
  p "person.note.text throws an exception"
end

p person.note&.text
p person.note&.try(:[], :text)
