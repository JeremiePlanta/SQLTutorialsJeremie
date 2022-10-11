DROP TABLE IF EXISTS Kunden;

CREATE TABLE Kunden (
        Kundennummer int,
        Vorname varchar(255),
        Nachname varchar(255),
        Stadt varchar(255),
        Straßennamen varchar(255),
        Hausnummer int
);

INSERT INTO Kunden (Kundennummer, Vorname, Nachname, Stadt, Straßennamen, Hausnummer)

VALUES ('1', 'Hans', 'Jürgen', 'Thüringer', 'Schloßalle', '42'),
       ('2', 'Jonathan', 'Black', 'Neunkirchen', 'Kirchenstraße', '13');
