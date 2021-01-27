Create DATABASE FlowerPower;
USE FlowerPower;

-- Table Klant:
CREATE TABLE klant(
    klantcode INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    voorletters VARCHAR(10),
    tussenvoegsels VARCHAR(50),
    achternaam VARCHAR(255),
    adres VARCHAR(255),
    postcode VARCHAR(255),
    woonplaats VARCHAR(255),
    geboortedatum DATE,
    gebruikersnaam VARCHAR(255),
    wachtwoord NVARCHAR(255)
);

-- Table Factuur:
CREATE TABLE factuur(
    factuurnummer INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    factuurdatum DATE,
    klantcode INT, 
    FOREIGN KEY(klantcode) REFERENCES klant(klantcode)
);

-- Table Artikel:
CREATE TABLE artikel(
    artikelcode INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    artikel VARCHAR(255),
    prijs DECIMAL(6,2)
);

-- Table Factuurregel:
CREATE TABLE factuurregel(
    factuurnummer INT,
    artikelcode INT,
    aantal INT,
    prijs DECIMAL(6,2),
    FOREIGN KEY(factuurnummer) REFERENCES factuur(factuurnummer),
    FOREIGN KEY(artikelcode) REFERENCES artikel(artikelcode)
);

-- Table Medewerker:
CREATE TABLE medewerker(
    medewerkerscode INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    voorletters VARCHAR(10),
    voorvoegsels VARCHAR(50),
    achternaam VARCHAR(255),
    gebruikersnaam VARCHAR(255),
    wachtwoord NVARCHAR(255)
);

-- Table Winkel:
CREATE TABLE winkel(
    winkelcode INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    winkelnaam VARCHAR(255),
    winkeladres VARCHAR(255),
    winkelpostcode VARCHAR(255),
    vestigingsplaats VARCHAR(255),
    telefoonnummer VARCHAR(15)
);

-- Table Bestelling:
CREATE TABLE bestelling(
    artikelcode INT,
    winkelcode INT,
    aantal INT,
    klantcode INT,
    medewerkerscode INT,
    FOREIGN KEY(artikelcode) REFERENCES artikel(artikelcode),
    FOREIGN KEY(winkelcode) REFERENCES winkel(winkelcode),
    FOREIGN KEY(klantcode) REFERENCES klant(klantcode),
    FOREIGN KEY(medewerkerscode) REFERENCES medewerker(medewerkerscode)
);
