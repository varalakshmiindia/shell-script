#!/bin/bash

#gt  - greater than
#lt  - less than
#eq  -equal
#ne  -not equal
#ge  -greater than or equal
#le  -less than or equal

if [$number -gt 20 ] ; then
echo "given number $number is greater to 20"
elif [$number -eq 20 ]; then
echo "given number $number is equal to 20"
else
echo "given number $number is less than to 20"
fi

