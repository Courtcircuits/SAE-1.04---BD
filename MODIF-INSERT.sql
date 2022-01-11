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
