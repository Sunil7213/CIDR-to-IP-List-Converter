#!/bin/bash

# Input file containing CIDR addresses (one per line)
input_file="input.txt"

# Output file to store the list of IP addresses
output_file="output.txt"

# Function to convert CIDR to IP list
cidr_to_ips() {
  local cidr="$1"
  local network=$(echo "$cidr" | cut -d "/" -f 1)
  local subnet=$(echo "$cidr" | cut -d "/" -f 2)
  
  local IFS
  IFS="." read -r i1 i2 i3 i4 <<< "$network"
  local ip=$(printf "%d.%d.%d.%d" "$i1" "$i2" "$i3" "$i4")
  
  local range=$((2**(32-subnet)))
  for (( i = 0; i < range; i++ )); do
    local octet=$((i / (256**3) % 256))
    local remaining=$((i % (256**3)))
    local octet=$((remaining / (256**2) % 256))
    local remaining=$((remaining % (256**2)))
    local octet=$((remaining / 256 % 256))
    local octet=$((remaining % 256))
    echo "$ip" >> "$output_file"
  done
}

# Read the input file line by line and convert each CIDR to IP list
while IFS= read -r cidr; do
  cidr_to_ips "$cidr"
done < "$input_file"

