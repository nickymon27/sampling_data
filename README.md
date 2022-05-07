# Sampling Data Weather

Script ini berfungsi intuk membuat sample cuaca dengan rate 0.3 pada periode 2014 dan 2015.

### Step 1:
Melakukan download file di https://github.com/labusiam/dataset/raw/main/weather_data.xlsx dan menyimpannya ke folder data
wget -P ./data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

### Step 2:
Melakukan covert file dari weather_data.xlsx pada sheet weather_2014 menjadi file weather_2014.csv dan pada sheet weather_2015 menjadi file weather_2015.csv
in2csv ./data/weather_data.xlsx --sheet "weather_2014" > data/weather_2014.csv
in2csv ./data/weather_data.xlsx --sheet "weather_2015" > data/weather_2015.csv

### Step 3:
Melakukan penggabungan file CSV antara weather_2014.csv dan weather_2015.csv menjadi nama file weather.csv
csvstack ./data/weather_2014.csv ./data/weather_2015.csv > data/weather.csv

### Step 4:
Menghapus file weather_data.xlsx dari folder data
rm ./data/weather_data.xlsx

### Step 5:
Membuat sample dengan rate 0.3 pada file weather.csv dan hasil sample tersebut disimpan dengan nama file sample_weather.csv
cat ./data/weather.csv | sample -r 0.3 > data/sample_weather.csv
