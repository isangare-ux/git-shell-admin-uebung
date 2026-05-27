#!/bin/bash

# 1. ZUERST: User-Eingabe holen
read -p "Geben Sie bitte Projektname ein: " projekt_ordner

# 2. Eingabe prüfen
if [ -z "$projekt_ordner" ]; then
    echo "⚠️ Keine Eingabe gemacht"
    exit 1
fi

# 3. DANN: Variablen mit $projekt_ordner bauen (OHNE führendes /!)
docs="$projekt_ordner/docs"
logs="$projekt_ordner/logs"
backups="$projekt_ordner/backups"

# 4. JETZT: Logik
if [ -d "$projekt_ordner" ]; then
    echo "Ordner existiert bereits"
else
    echo "Ordner wird erstellt..."
    mkdir -p "$projekt_ordner"
    echo "✅ Ordner erstellt: $projekt_ordner"
fi

if [ ! -d "$docs" ]; then
    mkdir -p "$docs"
    echo "✅ Ordner erstellt: $docs"
    touch "$docs/info.txt"
    echo "✅ Datei erstellt: $docs/info.txt"
fi

if [ ! -d "$logs" ]; then
    mkdir -p "$logs"
    echo "✅ Ordner erstellt: $logs"
fi

if [ ! -d "$backups" ]; then
    mkdir -p "$backups"
    echo "✅ Ordner erstellt: $backups"
fi
