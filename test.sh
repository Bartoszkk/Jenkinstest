#!/bin/bash

program_output=$(./test)

# Define the expected output without a trailing newline
expected_output="Hello World!"

# Remove the trailing newline from the program output
program_output_no_newline=$(echo -n "$program_output")

# Compare the program output to the expected output
if [ "$program_output_no_newline" = "$expected_output" ]; then
  echo "Output matches the expected result!"
  exit 0
else
  echo "Output does not match the expected result."
  exit 1
fi