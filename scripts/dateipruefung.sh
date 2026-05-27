#!/bin/bash
#cd ..


read -p "Geben Sie bitte einen Dateinamen oder Pfad ein: " pfad

#Ist die Eingabe leer?
if [ -z "$pfad" ]; then

    echo "⚠️ Ungültige Eingabe"
elif [ -e "$pfad" ]; then
    echo "✅ Existiert: $pfad"
else
    echo "❌ Nicht gefunden: $pfad"
fi