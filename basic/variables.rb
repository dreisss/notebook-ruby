# the simplest variable is defined as any traditional language
# and by convention, ruby use snake_case to commom variables
commom_variable = 'Hello World!'

# on the other hand, the first character uppercase indicates the variable is a constant
# by convention too, ruby use SCREAMING_SNAKE_CASE to constant variables
CONSTANT_VARIABLE = 'Hello World'

# another convention is the underscore("_") at the beginning to indicate that the variable is not being used
_unused_variable = 'Hello World!'

# global variables are indicated using the dollar sign("$") at the beginning
# it's not a good practice create global variables
$global_variable = 'Hello World!'

# instance variables can be created using the at sign("@") at the beginning
class Example
  def example
    @instance_variable = 'Hello World!'
  end
end
