def exportedMethod(x,y,z)
  x + y + z
end

class Example
  # generic way to add fields that can be set and get without methods
  attr_accessor :name

  # class field
  @@class_attr = 0

  # constructor
  def initialize(id)
    @object_id = id
  end

  # two ways to access private fields: self and @
  def getObjectIdOne()
    return @object_id
  end

  def getName()
    return self.name
  end

end

