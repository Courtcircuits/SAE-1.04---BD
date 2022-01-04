CREATE TABLE Fournisseur
(identifiantFournisseur NUMBER(5,0), nomFournisseur VARCHAR(50),
CONSTRAINT pk_Fournisseur PRIMARY KEY (identifiantFournisseur),
CONSTRAINT nn_nomFournisseur_Fournisseur CHECK (nomFournisseur IS NOT NULL));

CREATE TABLE Departement (
    identifiantDepartement NUMBER(5,0),
    nomDepartement VARCHAR(50),
    nomRegion VARCHAR(50),
    CONSTRAINT nn_nomDepartement_Departement CHECK (nomDepartement IS NOT NULL),
    CONSTRAINT nn_nomRegion_Departement CHECK (nomRegion IS NOT NULL),
    CONSTRAINT pk_Departement PRIMARY KEY (identifiantDepartement)
);

CREATE TABLE CategorieProduit
(identifiantCategorie NUMBER(5,0), nomCategorie VARCHAR(50),
constraint pk_CategorieProduit PRIMARY KEY (identifiantCategorie),
constraint nn_nom_CategorieProduit CHECK (nomCategorie IS NOT NULL),
CONSTRAINT un_nom_CategorieProduit UNIQUE (nomCategorie));

CREATE TABLE CategorieClient (
    identifiantCategorieClient NUMBER(5,0),
    nomCategorieClient VARCHAR(50),
    CONSTRAINT nn_nom_CategorieClient CHECK (nomCategorieClient IS NOT NULL),
    CONSTRAINT pk_CategorieClient PRIMARY KEY (identifiantCategorieClient),
    CONSTRAINT un_nom_CategorieClient UNIQUE (nomCategorieClient)
);

CREATE TABLE Ville
(identifiantVille NUMBER(5,0), nomVille VARCHAR(50), nombreHabitants NUMBER(8,0), identifiantDepartement NUMBER(5,0),
CONSTRAINT pk_Ville PRIMARY KEY (identifiantVille),
CONSTRAINT nn_nomVille_Ville CHECK (nomVille IS NOT NULL),
CONSTRAINT nn_nombreHabitants_Ville CHECK (nombreHabitants IS NOT NULL),
CONSTRAINT fk_idDepartement_Ville FOREIGN KEY (identifiantDepartement) REFERENCES Departement(identifiantDepartement));

CREATE TABLE Client
(idClient NUMBER(5,0), nomClient VARCHAR(50), prenomClient VARCHAR(50), numeroTel NUMBER(10,0), mailClient VARCHAR(255), dateDeNaissance DATE, idVilleNaissance NUMBER(5,0), idVilleResidence NUMBER(5,0), idCategorieClient NUMBER(5,0),
CONSTRAINT pk_Client PRIMARY KEY (idClient),
CONSTRAINT nn_nomClient_Client CHECK (nomClient IS NOT NULL),
CONSTRAINT nn_prenomClient_Client CHECK (prenomClient IS NOT NULL),
CONSTRAINT nn_mailClient_Client CHECK (mailClient IS NOT NULL),
CONSTRAINT nn_dateDeNaissance_Client CHECK (dateDeNaissance IS NOT NULL),
CONSTRAINT fk_idVilleNaissance_Client FOREIGN KEY (idVilleNaissance) REFERENCES Ville(identifiantVille),
CONSTRAINT fk_idVilleResidence_Client FOREIGN KEY (idVilleResidence) REFERENCES Ville(identifiantVille),
CONSTRAINT fk_idCategorieClient_Client FOREIGN KEY (idCategorieClient) REFERENCES CategorieClient(identifiantCategorieClient),
CONSTRAINT nn_idCategorieClient_Client CHECK (idCategorieClient IS NOT NULL),
CONSTRAINT nn_idVilleNaissance_Client CHECK (idVilleNaissance IS NOT NULL),
CONSTRAINT nn_idVilleResidence_Client CHECK (idVilleResidence IS NOT NULL));

CREATE TABLE Commande
(idCommande NUMBER(5,0),
dateCommande DATE,
dateLivraison DATE,
prixCommande NUMBER(10,2),
idVilleReception NUMBER(5,0),
idClient NUMBER(5,0),
CONSTRAINT pk_Commande PRIMARY KEY (idCommande),
CONSTRAINT fk_idVilleReception_Commande FOREIGN KEY (idVilleReception) REFERENCES Ville(identifiantVille),
CONSTRAINT fk_idClient_Commande FOREIGN KEY (idClient) REFERENCES Client(idClient),
CONSTRAINT nn_dateCommande_Commande CHECK(dateCommande IS NOT NULL),
CONSTRAINT nn_dateLivraison_Commande CHECK(dateLivraison IS NOT NULL),
CONSTRAINT nn_idVilleReception_Commande CHECK(idVilleReception IS NOT NULL),
CONSTRAINT nn_idClient_Commande CHECK(idClient IS NOT NULL),
CONSTRAINT ck_date_Commande CHECK(dateCommande<dateLivraison)); 

CREATE TABLE Produit
(idProduit NUMBER(5,0),
libelle VARCHAR(50),
prixProduit NUMBER(10,2),
identifiantCategorie NUMBER(5,0),
CONSTRAINT pk_Produit PRIMARY KEY (idProduit),
CONSTRAINT fk_idCategorie_Produit FOREIGN KEY (identifiantCategorie) REFERENCES CategorieProduit(identifiantCategorie),
CONSTRAINT ck_prixProduit_Produit CHECK(prixProduit>0),
CONSTRAINT nn_idCategorie_Produit CHECK(identifiantCategorie IS NOT NULL),
CONSTRAINT nn_prixProduit_Produit CHECK (prixProduit IS NOT NULL),
CONSTRAINT nn_libelle_Produit CHECK (libelle IS NOT NULL));

CREATE TABLE SeTrouver
(idCommande NUMBER(5,0),
idProduit NUMBER(5,0),
quantite NUMBER(10,0),
CONSTRAINT pk_SeTrouver PRIMARY KEY (idCommande, idProduit),
CONSTRAINT fk_idProduit_SeTrouver FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
CONSTRAINT fk_idCommande_SeTrouver FOREIGN KEY (idCommande) REFERENCES Commande(idCommande),
CONSTRAINT ck_quantite_SeTrouver CHECK(quantite>0),
CONSTRAINT nn_quantite_SeTrouver CHECK(quantite IS NOT NULL));

CREATE TABLE Promotion
(identifiantPromotion NUMBER(5,0), nomPromotion VARCHAR(50), dateDebut DATE, dateFin DATE,
CONSTRAINT pk_Promotion PRIMARY KEY (identifiantPromotion),
CONSTRAINT ck_DateDebutDateFin_Promotion CHECK (dateDebut < dateFin),
CONSTRAINT nn_dateDebut_Promotion CHECK (dateDebut IS NOT NULL),
CONSTRAINT nn_dateFin_Promotion CHECK (dateFin IS NOT NULL),
CONSTRAINT nn_nomPromotion_Promotion CHECK (nomPromotion IS NOT NULL));

CREATE TABLE Reduire (
    identifiantPromotion NUMBER(5,0),
    idProduit NUMBER(5,0),
    pourcentage NUMBER(2,2),
    CONSTRAINT nn_pourcentage_Reduire CHECK (pourcentage IS NOT NULL),
    CONSTRAINT pk_Reduire PRIMARY KEY (identifiantPromotion, idProduit),
    CONSTRAINT fk_idPromotion_Reduire FOREIGN KEY (identifiantPromotion) REFERENCES Promotion(identifiantPromotion),
    CONSTRAINT fk_idProduit_Reduire FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    CONSTRAINT ck_pourcentage_Reduire CHECK (pourcentage >= 1 AND pourcentage <= 99)
);

CREATE TABLE Fournir
(idProduit NUMBER(5,0),identifiantFournisseur NUMBER(5,0),
CONSTRAINT pk_Fournir PRIMARY KEY(idProduit,identifiantFournisseur),
CONSTRAINT fk_idProduit_Fournir FOREIGN KEY(idProduit) REFERENCES Produit(idProduit),
CONSTRAINT fk_idFournisseur_Fournir FOREIGN KEY (identifiantFournisseur) REFERENCES Fournisseur(identifiantFournisseur));
