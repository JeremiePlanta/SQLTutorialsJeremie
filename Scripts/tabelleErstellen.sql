DROP TABLE IF EXISTS Kunde;

CREATE TABLE Kunde (
        Kundennummer int,
        Vorname varchar(255),
        Nachname varchar(255),
        Stadt varchar(255),
        Strassenname varchar(255),
        Hausnummer int
);

INSERT INTO Kunde (Kundennummer, Vorname, Nachname, Stadt, Strassenname, Hausnummer)

VALUES ('1', 'Hans', 'Juergen', 'Thueringer', 'Schlossalle', '42'),
       ('2', 'Jonathan', 'Black', 'Neunkirchen', 'Kirchenstrasse', '13');
