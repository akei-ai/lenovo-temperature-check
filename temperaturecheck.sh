#!/bin/bash
    if [[ -z "$1" ]]; then
        echo "Empty Parameter for Temperature, Defaulting to 80C "
        TEMP_TARGET=80
    else
        TEMP_TARGET=$1
    fi

    if [[ -z "$2" ]]; then
        echo "Empty Parameter for Seconds, Defaulting to 1 second checks"
        SLEEP=1
    else
        SLEEP=$2
    fi

echo "Starting the Program, will do checks in 5 seconds"
sleep 5


while true; do
    TEMP_CPU=$(sensors k10temp-pci-00c3 -j | jq .[].Tctl.temp1_input)
    TEMP_IGPU=$(sensors amdgpu-pci-0600 -j | jq .[].edge.temp1_input)
    TEMP=$(echo "($TEMP_CPU + $TEMP_IGPU)/2"| bc -l)
    
    echo Lenovo Extreme Cooling
    if (( $(echo "$TEMP >= $TEMP_TARGET" | bc -l) )); then
        ec4Linux enable > /dev/null
        echo Enabling ExtremeCooling4Linux
    else
        ec4Linux disable
        echo Disable ExtremeCooling4Linux
    fi
    echo Temperature Average is : "$TEMP"
    echo Tctl : "$TEMP_CPU"
    echo edge : "$TEMP_IGPU"
    
    sleep "$SLEEP"
done



