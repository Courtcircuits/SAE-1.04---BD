/*Jeu de données dans jour*/
INSERT INTO Jour(jour) VALUES ('12/01/2021');
INSERT INTO Jour(jour) VALUES ('13/01/2021');
INSERT INTO Jour(jour) VALUES ('14/01/2021');
INSERT INTO Jour(jour) VALUES ('15/01/2021');
INSERT INTO Jour(jour) VALUES ('16/01/2021');
INSERT INTO Jour(jour) VALUES ('17/01/2021');
INSERT INTO Jour(jour) VALUES ('18/01/2021');
INSERT INTO Jour(jour) VALUES ('19/01/2021');
INSERT INTO Jour(jour) VALUES ('20/01/2021');
INSERT INTO Jour(jour) VALUES ('21/01/2021');

/* SeTrouver */
UPDATE SeTrouver SET jour='12/01/2021' WHERE idCommande=1 and idProduit=3;
UPDATE SeTrouver SET jour='13/01/2021' WHERE idCommande=1 and idProduit=2;
UPDATE SeTrouver SET jour='17/01/2021' WHERE idCommande=2 and idProduit=2;
UPDATE SeTrouver SET jour='17/01/2021' WHERE idCommande=3 and idProduit=1;
UPDATE SeTrouver SET jour='19/01/2021' WHERE idCommande=4 and idProduit=4;
UPDATE SeTrouver SET jour='12/01/2021' WHERE idCommande=5 and idProduit=0;
UPDATE SeTrouver SET jour='17/01/2021' WHERE idCommande=6 and idProduit=9;
UPDATE SeTrouver SET jour='12/01/2021' WHERE idCommande=7 and idProduit=8;
UPDATE SeTrouver SET jour='19/01/2021' WHERE idCommande=8 and idProduit=7;
UPDATE SeTrouver SET jour='21/01/2021' WHERE idCommande=9 and idProduit=6;
