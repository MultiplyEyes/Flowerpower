CREATE DATABASE Flowerpower;

CREATE TABLE klant(
  id INT NOT NULL AUTO_INCREMENT,
  voorletters VARCHAR(250) NOT NULL,
  tussenvoegsel VARCHAR(250),
  achternaam VARCHAR(250) NOT NULL,
  adres VARCHAR(250) NOT NULL,
  postcode VARCHAR(250) NOT NULL,
  woonplaats VARCHAR(250) NOT NULL,
  geboortedatum VARCHAR(250) NOT NULL,
  gebruikersnaam VARCHAR(250) NOT NULL,
  wachtwoord VARCHAR(250) NOT NULL,
  PRIMARY KEY(id)
)

CREATE TABLE medewerker(
  id INT NOT NULL AUTO_INCREMENT,
  voorletters VARCHAR(250) NOT NULL,
  voorvoegsels VARCHAR(250),
  achternaam VARCHAR(250) NOT NULL,
  gebruikersnaam VARCHAR(250) NOT NULL,
  wachtwoord VARCHAR(250) NOT NULL,
  PRIMARY KEY(id)
)

CREATE TABLE winkel(
  id INT NOT NULL AUTO_INCREMENT,
  winkelnaam VARCHAR(250) NOT NULL,
  winkeladres VARCHAR(250) NOT NULL,
  winkelpostcode VARCHAR(250) NOT NULL,
  vestigingsplaats VARCHAR(250) NOT NULL,
  telefoonnummer VARCHAR(250) NOT NULL,
  PRIMARY KEY(id)
)

CREATE TABLE factuur(
  id INT NOT NULL AUTO_INCREMENT,
  factuurdatum VARCHAR(250) NOT NULL,
  klantID INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(klantID) REFERENCES klant(id)
)

CREATE TABLE artikel(
  id INT NOT NULL AUTO_INCREMENT,
  artikel VARCHAR(250) NOT NULL,
  prijs VARCHAR(250) NOT NULL,
  PRIMARY KEY(id)
)

CREATE TABLE factuurregel(
  id INT NOT NULL AUTO_INCREMENT,
  aantal VARCHAR(250) NOT NULL,
  prijs VARCHAR(250) NOT NULL,
  factuurID INT NOT NULL,
  artikelID INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(factuurID) REFERENCES factuur(id),
  FOREIGN KEY(artikelID) REFERENCES artikel(id)
)

CREATE TABLE bestelling(
  id INT NOT NULL AUTO_INCREMENT,
  aantal VARCHAR(250) NOT NULL,
  afgehaald VARCHAR(250) NOT NULL,
  klantID INT NOT NULL,
  medewerkerID INT NOT NULL,
  artikelID INT NOT NULL,
  winkelID INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(klantID) REFERENCES klant(id),
  FOREIGN KEY(medewerkerID) REFERENCES medewerker(id),
  FOREIGN KEY(artikelID) REFERENCES artikel(id),
  FOREIGN KEY(winkelID) REFERENCES winkel(id)
)
