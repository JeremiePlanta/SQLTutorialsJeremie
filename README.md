# SQLTutorialsJeremie
In diesem Projekt werden alle Skripte Hinterlegt die Jérémie Planta beim lernen der SQL Grundlagen geschieben hat.
In dieser README werden verschiedene Szenarien beschrieben die mit Hilfe der beschriebenen Skripte nachgespielt werden können. </br>
Beim Ausführen der Skripte sollte regelmäßig der Stand der Datenbank überwacht werden, um die Auswirkungen der Skripte nachzuvollziehen.
## Anforderungen

* Kenntnisse wie man ein SQL Skript ausführt und eine Datenbank überwacht
* DBVisualizer oder sonstiges tool zum Monitoring und ausführen von SQL Skripten bei Datenbanken.
* Eine SQL Datenbank(zb: PostgresSQL)

## Anlegen von Tabellen in verschiedenen NormalFormen
Die Tabellen spiegeln den Kontext eines Kunden wider, der über Bestellungen Artikel kaufen kann.
Anmerkung: es wird je nach Normalform eine unterschiedliche Anzahl an Tabellen benötigt.
* Zweite Normalform (Skript: erstelleTabelle_2NF)
* Dritte Normalform (Skript: erstelleTabelle_3NF)

## Abfragen von Datensätzen
Zum Abfragen eines Datensatzes wird das Select Statement verwendet. Mit dieses kann mit zahlreichen Optionen verwendet werden, um verschiedenste Daten wiederzugeben.

Zunächst falls nicht schon vorhanden muss eine Tabelle angelegt werden(Skript: erstelleTabelle_3NF).
Anschließend können sie mit folgenden Skripten verschiedene Ergebnisse Abfragen:
* Alle spalten in einer Tabelle (Skript: alleSpaltenAbfragen)
* Eine einzelne Spalte aus einer Tabelle (Skript: spalteAbfragen)
* Ein Kartesisches Produkt aus zwei Tabellen (Skript: tabellenAbfragenKartesischesProdukt)

## Wie verhält sich AutoIncrement bei gelöschten Schlüsseln
Es wird demonstriert das AutoIncrement keinen zuvor angelegten Schlüssel wiederverwendet auch falls dieser gelöscht wurde.
Skript reihenfolge:
1. Anlegen einer Tabelle mit AutoIncrement (Skript: erstelleTabelle_3NF)
2. Loeschen eines Tupels (Skript: loescheEintragInBestellung)
3. Anlegen eines neuen Tupels mit AutoIncrement zur Key vergabe(Skript: erstelleEintraginBestellung)

Sie können nun beobachten dass in der Tabelle `bestellung` für den neuen Tupel eine noch nie zuvor benutzer Primärschlüssel generiert wurde.   