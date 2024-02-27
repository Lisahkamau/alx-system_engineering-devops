#!/usr/bin/env ruby

# Check if the correct number of command-line arguments is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

# Get the input string from the command-line argument
input_string = ARGV[0]

# Define the regular expression with repetition token
regex = /hbt{1,}n/

# Check if there is a match using the regular expression
match_result = input_string.match(regex)

# Print the match result or an empty line if no match
puts match_result ? match_result[0] : ""

