require 'bigdecimal'
require 'bigdecimal/util'

# Ruby numeric types and conversion

## Ruby int and int literals
i = 1000
p i
i = 1_000
p i

p 1000 == 1_000
p 1_000_000
p 1_000_000 == 1000000

## Ruby decimals
### Conversion and operations
d = i / 100.00
p d
d = d + 0.1
p d

### Declarations
d = BigDecimal('101010.1011')
p d
d = BigDecimal('101010')
p d
d = 101010.to_d
p d

p BigDecimal('101010') == 101010.to_d

## Comparison of decimals and floats
### Note that the Rails helper isn't available in Ruby
### f = 1000.to_f
f = Float('10101011')
p f
f = Float('101010.1231321')
p f

# Comparing Float and Decimals
f = Float('1.0000000')
d = BigDecimal('1.00')
p d == f

f = Float('1.00001') / Float('1.00001')
d = BigDecimal('1.00001') / BigDecimal('1.00001')
p d == f
