# DMI Weather
A script created to gather information about current weather from DMI (Danish Meteorological Institute). The script was originally created to function as a block for [i3blocks](https://github.com/vivien/i3blocks), but can also be used as a standalone.

The script uses geolocation based on IP address to determine location to gather weather data from, and will output a string on the form `descriptor, precipitation(if applicable) temperature humidity wind_direction wind_speed`.

Run the script from terminal
```
[usr@host]$ python weather.py
Cloudy, rain, 1.4mm 12C 95%RH SSW2.58m/s
```
or apply as a block in i3blocks or similar
```
[weather]
command=python /path/to/weather.py
interval=5m
```
