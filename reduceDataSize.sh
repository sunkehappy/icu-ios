#/usr/local/bin
../../../../build-host/bin/icupkg -l  icudt58l.dat > all.txt
awk 'NR==FNR{a[$0];next} !($0 in a)' extract.txt all.txt > delete.txt
../../../../build-host/bin/icupkg -r delete.txt icudt58l.dat icudt58l.dat
