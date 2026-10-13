#!/bin/bash
<<<<<<< HEAD
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d, -f7 | {
  sum=0; n=0
  while read x; do
    sum=$((sum + x)); n=$((n + 1))
  done
  echo "scale=2; $sum / $n" | bc
}

=======
>>>>>>> 2a9aa3eaf893e52665fa2aef1d45f8fc97dcbd7c
