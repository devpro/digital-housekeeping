#!/bin/bash

options=(
  "apple"
  "milkshake"
  "salad"
)

PS3="What would you like for dinner? "
selected_option=""
select option in "${options[@]}"
do
  selected_option=$option
  break
done

echo "Enjoy your $selected_option!"
