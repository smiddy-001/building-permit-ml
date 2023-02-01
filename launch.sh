#!/bin/bash

cd ./data
{
wget -N -c 'https://github.com/martinpella/acamica/raw/master/Building_Permits.csv' -O data-raw.csv
echo 'data download succesfull'
} || 
{
    echo 'data download failed, try again with better wifi connection or check that "https://github.com/martinpella/acamica/raw/master/Building_Permits.csv" is still up and running'
}

cd ../

echo -e "\ndo you want to run the python file? \n(Y) or (N): "

read var

if [ $var = 'y' -o $var = 'Y' ]
then

    echo "starting python file"
    exec python3 main.py

else

    echo "not running python file"
    
fi

# echo It\'s nice to meet you $isRunningPython