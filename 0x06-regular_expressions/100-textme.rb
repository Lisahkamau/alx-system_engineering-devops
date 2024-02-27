#!/usr/bin/env ruby

# Check if the correct number of command-line arguments is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit 1
end

# Get the log file path from the command-line argument
log_file = ARGV[0]

# Read the log file
log_content = File.read(log_file)

# Define the regular expression to extract information
regex = /\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/

# Extract information from the log content
matches = log_content.scan(regex)

# Output the formatted result
matches.each do |match|
  puts "#{match[0]},#{match[1]},#{match[2]}"
end

