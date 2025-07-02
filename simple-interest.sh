#!/bin/bash

# Script tính lãi suất đơn giản
# Công thức: SI = (P * R * T) / 100

if [ $# -ne 3 ]; then
    echo "Usage: $0 <Principal> <Rate_of_Interest> <Time_in_years>"
    exit 1
fi

P=$1  # Gốc (Principal)
R=$2  # Lãi suất (Rate of Interest)
T=$3  # Thời gian (Time)

SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

echo "Simple Interest is: $SI"
