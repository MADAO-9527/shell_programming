#!/bin/bash
PS3="Choose your favorite vegetable: "
echo
select vegetable in "beans" "carrots" "potatoes" "onions"
do
    echo
    echo "Your favorite veggie is $vegetable."
    echo "Yuck!"
    echo
    break
done

exit 0