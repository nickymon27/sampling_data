#!/usr/bin/bash

#download
wget -P ./data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

#covert file
in2csv ./data/weather_data.xlsx --sheet "weather_2014" > data/weather_2014.csv
in2csv ./data/weather_data.xlsx --sheet "weather_2015" > data/weather_2015.csv

#gabungkan file
csvstack .data/weather_2014.csv .data/weather_2015.csv > data/weather.csv

#menghapus file weather_data.xlsx
rm .data/weather_data.xlsx
