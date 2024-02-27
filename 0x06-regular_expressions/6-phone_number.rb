#!/usr/bin/env ruby

# Check if the correct number of command-line arguments is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <phone_number>"
  exit 1
end

# Get the input phone number from the command-line argument
phone_number = ARGV[0]

# Define the regular expression
regex = /^\d{10}$/

# Check if there is a match using the regular expression
match_result = phone_number.match(regex)

# Print the match result or an empty line if no match
puts match_result ? match_result[0] + "$" : ""

