# Vars need no type declared
x = 0
## There's no decrement or increment operator
x += 1
puts(x)

class Customer
  # Tracked on all copies
  @@no_of_customers = 0

  # Constructor
  ## `@` specifies a private field
  def initialize(id, name, addr)
    @priv_id = id
    @pub_name = name
    @priv_cust = addr
    @@no_of_customers += 1
  end

  # Encapsulation Getters
  def getPubName()
    return @pub_name
  end

  def getNoOfCustomers()
    return @@no_of_customers
  end

  # Encapsulation Setters
  def setPubName(name)
    @pub_name = name
  end

end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
puts(cust1.getPubName)
puts(cust1.getNoOfCustomers)

cust2 = Customer.new("", "", "")
cust2.setPubName("bob")
puts(cust2.getPubName)

# Inheritance
class Buyer < Customer
  def initialize(id)
    @buyer_id = id
  end
end

buyer1 = Buyer.new(1)
puts(buyer1.getNoOfCustomers)
buyer1.setPubName("buyer")
puts(buyer1.getPubName)