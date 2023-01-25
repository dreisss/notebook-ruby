# ruby does support all the traditional operations into strings
# string concatenation
'Hello' + ' World!'

# string interpolation
# to use interpolation we must use "" instead ''
world = 'World'
"Hello #{world}!"

# literal strings are defined using '' instead ""
# is a good practice use literal strings whenever possible
'Hello World!'

# access substrings
'Hello World!'[0] # 'H'
'Hello World!'[0, 5] # 'Hello'
'Hello World!'[0..4] # 'Hello'
'Hello World!'[6] # 'W'
'Hello World!'[6, 5] # 'World'
'Hello World!'[6..10] # 'World'

# concat strings, only non-frozen literal strings can be changed
'Hello '.concat 'World!'
'Hello ' << 'World!'

# to frozen literal strings we can use the "re-assignment" operation
# (if possible, prefer the concat operation)
string = 'Hello '
string = string + 'World!'
string += 'World!'

# Some useful string methods
'Hello World!'.equal? '' # false
'Hello World!'.empty? # false
'Hello World!'.upcase # 'HELLO WORLD!
'Hello World!'.downcase # 'hello world!
'Hello World!'.count 'l' # 3
'Hello World!'.index 'l' # 2
