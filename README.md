# Linux Administrationsprojekt

Ein kleines Übungsprojekt zur Erstellung von Shell-Skripten für typische Aufgaben aus dem Linux-Alltag.

## Über das Projekt

In diesem Projekt entstehen mehrere Shell-Skripte, die alltägliche Administrationsaufgaben unter Linux unterstützen. Ziel ist es, eigene Lösungen zu entwickeln, statt fertige Skripte zu übernehmen — und dabei sauber mit Git zu arbeiten.

## Ziele

- Anforderungen lesen und verstehen
- Eigene, sinnvolle Lösungen entwickeln
- Den Arbeitsstand sauber mit Git dokumentieren
- Den Umgang mit Branches, Commits und Merges üben

## Arbeitsweise

Die Skripte werden **nicht direkt im `master`-Branch** entwickelt. Stattdessen gilt folgender Ablauf:

1. Für jede neue Funktion wird ein **eigener Branch** erstellt
2. Die Funktion wird auf diesem Branch entwickelt und getestet
3. Sobald die Aufgabe fertig ist, wird sie **committet** und **gepusht**
4. Danach wird der Branch in den `master`-Branch **gemerged**

## Git-Workflow (Beispiel)

```bash
# Neuen Branch für eine Funktion anlegen
git checkout -b feature/backup-skript

# Änderungen vornehmen, dann committen
git add .
git commit -m "Backup-Skript hinzugefügt"

# Branch pushen
git push origin feature/backup-skript

# In master mergen
git checkout master
git merge feature/backup-skript
git push origin master
```

## Hinweise

- Es geht **nicht** darum, fertige Lösungen zu kopieren
- Eigene Anforderungen werden gelesen, analysiert und umgesetzt
- Jeder Arbeitsschritt soll in Git nachvollziehbar dokumentiert sein

## Voraussetzungen

- Linux-Umgebung (oder WSL / virtuelle Maschine)
- Git installiert
- Grundkenntnisse in der Shell (Bash)
