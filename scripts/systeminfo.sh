#!/bin/bash
cd ..
echo "-----------------------Systeminformationen-------------------------"
echo "Benutzername: $(whoami)"
echo "Hostname: $(hostname)"
echo "Datum und Uhrzeit:   $(date +"%d.%m.%Y %T")"
echo "Verzeichnis:  $(pwd)"
