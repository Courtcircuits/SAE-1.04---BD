CREATE TABLE FournisseurPrincipal
(idProduit NUMBER(5,0), identifiantFournisseur NUMBER(5,0),
CONSTRAINT pk_FournisseurPrincipal PRIMARY KEY (idProduit, identifiantFournisseur),
CONSTRAINT fk_FournisseurPrincipal FOREIGN KEY (idProduit, identifiantFournisseur) REFERENCES Fournir(idProduit, identifiantFournisseur));

CREATE TABLE Jour
(jour DATE,
CONSTRAINT pk_Jour PRIMARY KEY(jour));

ALTER TABLE SeTrouver ADD jour DATE;
