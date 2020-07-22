# Strings

## Use double quotes for interpolation
p "I am a string interpolation example #{1+4}"
## "I am a string interpolation example 5"

## Alternative syntax
p %Q(So am I #{1+4})

## Use single quotes to escape the # symbol
p 'I am a string interpolation example #{1+4}'
## "I am a string interpolation example \#{1+4}"

## Alternative escaped syntax
p %q(So am I #{1+4})

