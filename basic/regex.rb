#!/usr/bin/env ruby

# Regex can be created using the "/" symbol
/Regex/

# You can use the "=~" operator to see if the regex match with a string
if "12:20h" =~ /\d\d:\d\dh/
  puts "ok"
end

# If it does, the pattern start will be returned otherwise, it will return "nil"
if "random string here" =~ /\d\d:\d\dh/
  puts "ok"
end
