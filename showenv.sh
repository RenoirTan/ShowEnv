#!/bin/sh

prog=$(which env)

if [ $? == 0 ]; then
    ${prog}
    code=0
else
    echo "Could not find 'env'"
    code=1
fi

echo -n "Press enter to exit..."
read line
exit $code
