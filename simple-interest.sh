#!/bin/bash

# Program to calculate Simple Interest
# Formula: Simple Interest = (P × R × T) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter Principal: " P
read -p "Enter Rate of Interest: " R
read -p "Enter Time (in years): " T

if [[ $P -le 0 || $R -le 0 || $T -le 0 ]]; then
  echo "Invalid input. Values must be greater than zero."
  exit 1
fi

SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

echo "--------------------------"
echo "Calculated Simple Interest: $SI"
