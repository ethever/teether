#!/bin/bash

forge build

# Extracting the object parameter from JSON and removing the "0x" prefix
object=$(jq -r '.deployedBytecode.object' out/Counter.sol/Counter.json | sed 's/^0x//')

# Saving the result to a file named test.code
echo "$object" > test.code