# Titel:  R Markdown und reproduzierbarer Code - Template R Skript
# Autor:  Jose C. Garcia Alanis & Mareike Huelsemann
# Datum:  07. Juni 20123
#         Johannes Gutenberg-Universitaet Mainz

# Nutzen Sie dieses Beispiel R-Skript, 
# um das Kompilieren einer R Markdown-Datei zu üben.
# Schauen Sie sich dafür die Materialien zum Tutorium online,
# oder unter diesem Link:
# https://github.com/JoseAlanis/RMarkdown-101/blob/main/intro_to_markdown.pdf

# Ihre Aufgabe ist, dieses Skript in einer Markdown Datei zu übertragen.
# Folgen Sie der PDF-Anleitung aus dem Tutorium, um ein gut kommentiertes,
# reproduziebares Analyse-Skript zu erstellen.
# TIPP: Sie müssen nur den hier aufgeführte Code in einer Markdown Datei
# übertragen und diesen in R-Codeblöcke einfügen.
# Zusätzlich sollen Sie die Kommentare und Beschreibungen als Text in der
# Markdown Datei einfügen.

# 1)
# Zunächst wollen wir das R-Paket `dplyr` laden
library(dplyr)

# Wir brauchen auch das R-Paket `tidyr`
library(tidyr)

# 2)
# Als nächstes wollen wir die Daten laden
data <- read.csv(file = 'https://raw.githubusercontent.com/JoseAlanis/RMarkdown-101/main/zufriedenheit.csv')

# 3)
# Nun wollen wir einen neuen R-Befehl lernen
# Das Befehlt heisst `pivot_longer`
# Suchen Sie im Internet (z.B. auf Google) nach einem kleinen Beispiel
# für die Benutzung von `pivot_longer`.
# Es kann manchmal schwer sein, brauchbare Antworten auf diese Art von Fragen
# im Internet zu finden.
# Versuchen sie es mit konkreten Google-Suchen:
# z.B.: Beispiele für pivot_longer; pivot_longer aus tidyr package Beispiel in R; usw.
# Nennen Sie bei Ihren Suchen immer die Funktion und das Paket aus dem die Funktion
# stammt.
# Es kann manchmal hilfreich sein mehrere Lösungen auszuprobieren bevor man entscheidet
# mit welchem Output man zufrieden ist.
# Alternativ können Sie mit der Hilfe-Funktion in R (`?pivot_longer`
# oder `help(pivot_longer)`) die Dokumentation von der Funktion `pivot_longer`
# aufrufen. Probieren beide Ansätze aus.

# Schreiben Sie nun eine kurze Antwort.

# 4)
# Kurz erklärt, `pivot_longer` kann benutzt werden, um Datensätze von einem
# breiten Format (wie bei SPSS: die Variablen sind von links nach rechts in Spalten
# geordnet) in ein langes Format zu bringen. Lange Dateiformate sind typisch für
# R und sind eine Voraussetzung für viele Analysen.
#
# Später im Tutorium werden wir mehr über lange Dateiformate lernen. Für heute
# reicht es, wenn wir den Umgang mit `pivot_longer` etwas ausprobieren.

# Benutzen wir die `dplyr`-Syntax in Kombination mit `pivot_longer`, um den Datensatz
# `data` in ein langes Dateiformat zu bringen.
data_lang <- data %>%
  pivot_longer(cols = c('DB_Fernverkehr', 'DB_Regio', 'DB_Cargo'),
               names_to = 'DB_Sparte',
               values_to = 'Zufiredenheit')

# Schauen wir uns nun was in `data_lang` enthalten ist.
data_lang

# In einem letzten Schritt wollen wir den Mittelwert für die jeweilige `DB_Sparte`
# in `data_lang` berechnen.
# Benutzen Sie Ihre `dplyr`-Skills, um diese Aufgabe zu lösen.
# Übertragen Sie dann den kompletten Code in ein R Markdown Dokument und geben
# Sie diese als Hausaufgabe ab.

# Viel Spaß beim Coden :)!