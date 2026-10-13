#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d, -f7 | {
  sum=0; n=0
  while read x; do
    sum=$((sum + x)); n=$((n + 1))
  done
  echo "scale=2; $sum / $n" | bc
}
