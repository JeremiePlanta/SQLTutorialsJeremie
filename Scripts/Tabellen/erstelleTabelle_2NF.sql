DROP TABLE IF EXISTS Kunde CASCADE;

CREATE TABLE Kunde(
        Kundennummer INTEGER PRIMARY KEY,
        Vorname varchar(64),
        Nachname varchar(64),
        Strassenname varchar(64),
        Hausnummer INTEGER,
        Postleitzahl INTEGER,
        Ort varchar(64)
);

INSERT INTO Kunde(Kundennummer, Vorname, Nachname, Strassenname, Hausnummer, Postleitzahl, Ort)
VALUES ('1','John', 'Doe', 'Kartoffel','7','66798','Wallerfangen'),
       ('2','John', 'Hank', 'Sieb','14','66798','Wallerfangen'),
       ('3','Lauch', 'Thim', 'Kartoffel','8','66456','Berlin'),
       ('4','Karl', 'Einstein', 'Lemone','7','66898','Neunkirchen');

DROP TABLE IF EXISTS Artikel CASCADE;
       
CREATE TABLE Artikel(
        Artikelnummer INTEGER PRIMARY KEY,
        Name varchar(64)
);

INSERT INTO Artikel(Artikelnummer, Name)
VALUES ('1','Hamster'),
       ('2','Greifarm'),
       ('3','Polyhydroxid'),
       ('4','Gargamehl');
       
       
DROP TABLE IF EXISTS Bestellung;

CREATE TABLE Bestellung(
        Bestellnummer SERIAL PRIMARY KEY,
        Kundennummer INTEGER,
        Artikelnummer INTEGER,
        Anzahl INTEGER,
        Datum DATE,
        FOREIGN KEY (Kundennummer) REFERENCES Kunde(Kundennummer),
        FOREIGN KEY (Artikelnummer) REFERENCES Artikel(Artikelnummer)
);

INSERT INTO Bestellung(Kundennummer, Artikelnummer, Anzahl, Datum)
VALUES ('1','1', '3', '2007-11-04'),
       ('2','3', '15', '2007-11-08'),
       ('3','4', '345', '2007-11-18'),
       ('4','2', '12', '2009-11-04');
       