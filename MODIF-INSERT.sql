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

/* Modification de la table Produit */
UPDATE Produit SET idFournisseurPrincipal=1 WHERE idProduit=0;
UPDATE Produit SET idFournisseurPrincipal=2 WHERE idProduit=3;
UPDATE Produit SET idFournisseurPrincipal=9 WHERE idProduit=4;
UPDATE Produit SET idFournisseurPrincipal=10 WHERE idProduit=1;
UPDATE Produit SET idFournisseurPrincipal=4 WHERE idProduit=2;
UPDATE Produit SET idFournisseurPrincipal=6 WHERE idProduit=5;
UPDATE Produit SET idFournisseurPrincipal=8 WHERE idProduit=6;
UPDATE Produit SET idFournisseurPrincipal=5 WHERE idProduit=7;
UPDATE Produit SET idFournisseurPrincipal=3 WHERE idProduit=8;

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
