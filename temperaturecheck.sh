#!/bin/bash
     if [[ -z "$1" ]]; then
        echo "Empty Parameter, Defaulting to 1 second checks"
        SLEEP=1
    else
        SLEEP=$1
    fi
echo "Starting the Program, will do checks in 5 seconds"
sleep 5
while true; do
    TEMP=$(sensors k10temp-pci-00c3 -j | jq .[].Tctl.temp1_input)

    echo Lenovo Extreme Cooling

    if (( $(echo "$TEMP >= 80" | bc -l) )); then
        ec4Linux enable
        echo Enabling ExtremeCooling4Linux
    else
        ec4Linux disable
        echo Disable ExtremeCooling4Linux
    fi
    echo Temperature of Tctl is : "$TEMP"
   
    
    sleep "$SLEEP"
done



