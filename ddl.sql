# modelo de dados
## DDL SQL

### pontos
- child_id
- date
- total

### frases
- child_id
- date
- frase
- done
- ok

CREATE TABLE `Child` (
  `ChildId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`ChildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Points (
    PointsID int NOT NULL AUTO_INCREMENT,
    Date date NOT NULL,
    Total int NOT NULL,
    ChildId int NOT NULL,
    PRIMARY KEY (PointsID),
    FOREIGN KEY (ChildId) REFERENCES Child(ChildId)
);

CREATE TABLE Frases (
    FrasesID int NOT NULL AUTO_INCREMENT,
    Frase varchar(255) NOT NULL,
    Date date NOT NULL,
    ChildId int NOT NULL,
    PRIMARY KEY (FrasesID),
    FOREIGN KEY (ChildId) REFERENCES Child(ChildId)
);