#! /bin/bash

# Beispieldatei: rheinpegel.sh
# Anwendung: ./rheinpegel.sh <tage>

url="https://vorhersage.bafg.de/14-Tage-Vorhersage/Oestrich_Quantile_25100300.csv"
today=$(date +%d.%m.%Y)
if [ $# -ge 1 ]; then
    tage=$1
else
    tage=1
fi
forecast=$(date --date "+$tage days" +%d.%m.%Y)
curl -s $url | grep $forecast | cut -d ';' -f 1,8






