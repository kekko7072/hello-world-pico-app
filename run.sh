#!/bin/bash

# Connect Raspberry Pi Pico W
echo "\n-------------------------\n"
echo "Attach RPI Pico W while pressing BOOTSEL button"
sleep 3
echo "RPI Pico W attached"
read -p 'RPI PI Pico W attached? [y/n]: ' value
if [ $value = "y" ]
then
    echo "Continue"
else
    echo "Exit"
    exit 1
fi

# Build for Raspberry Pi Pico W
echo "Building for RPi Pico W"
sleep 1
rm -rf build && mkdir build
cd build && cmake ..
make hello_world



# Upload to Raspberry Pi Pico W
echo "Uploading to RPI Pico W"
cp hello_world.uf2 /media/$USER/RPI-RP2

# Done
echo "Done"

