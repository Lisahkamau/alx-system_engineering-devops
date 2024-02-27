#!/usr/bin/env ruby

# Check if the correct number of command-line arguments is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

# Get the input string from the command-line argument
input_string = ARGV[0]

# Define the regular expression
regex = /[A-Z]/

# Extract and concatenate all capital letters from the input string
match_result = input_string.scan(regex).join

# Print the match result or an empty line if no match
puts match_result.empty? ? "" : match_result + "$"

