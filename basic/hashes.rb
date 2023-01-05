#!/usr/bin/env ruby

# Simple hash assignment
instruments_type = {
  "violin" => "string",
  "piano" => "string",
  "clarinet" => "woodwind",
  "flute" => "woodwind"
}

# Get hash value using the key
puts instruments_type["clarinet"]

# If the element was not found it will return "nil", meaning "false" as boolean
puts instruments_type["oboe"] == nil

# The default "nil" return can be replaced when creating a empty hash
empty_hash = Hash.new("default")
