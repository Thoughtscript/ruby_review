# More on access and visibility in Ruby

class ExampleClass
  attr_accessor :field_one

  def set_and_get_field_two(arg)
    ## Does not have to be declared as attr_accessor
    ## But cannot be directly accessed in public
    @field_two = arg
    p @field_two
  end

  def get_field_two()
    p @field_two
  end

  def get_field_one
    ## These are the same
    p @field_one
    p self.field_one

    example_private(arg1: @field_one)
  end

  private

  def example_private(arg1:)
    p arg1
  end

end

## Call
e = ExampleClass.new
e.field_one = 2
e.get_field_one

begin
  e.example_private(arg1: 2)
rescue Exception
  p "will throw access error"
end

e.set_and_get_field_two(5)
## Now available after being set
## Only available throw getter
p e.get_field_two

begin
  e.field_two
rescue Exception
  p "will throw access error"
end