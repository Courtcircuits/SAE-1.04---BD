CREATE TABLE Jour
(jour DATE,
CONSTRAINT pk_Jour PRIMARY KEY(jour));

ALTER TABLE Produit ADD (idFournisseurPrincipal NUMBER(5,0));
ALTER TABLE SeTrouver ADD jour DATE;
