-- Client : 

/*Ces trois lignes fonctionnent pour pouvoir faire des tests corrects. Les données insérées seront supprimées*/
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (6, 'Hérault', 'Occitanie');
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (10, 'Lunel', 25000, 6);
INSERT INTO CategorieClient (identifiantCategorieClient, nomCategorieClient) VALUES (0, 'fidèle');

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES ('oui', 'test', 'test', NULL, 'wow', '10/09/2003', 10, 10, 0);
/* idClient doit être un nombre entier */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', 'oui', 'wow', '10/09/2003', 10, 10, 0);
/* numeroTel doit être un nombre entier */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', 'oui', 10, 10, 0);
/* dateDeNaissance doit être une date */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 'oui', 10, 0);
/* idVilleNaissance doit être un nombre entier*/

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 10, 'oui', 0);
/* idVilleResidence doit être un nombre entier*/

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 10, 10, 'oui');
/* idCategorieClient doit être un nombre entier*/

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 10, 10, NULL);
/* idCategorieClient ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 10, NULL, 0);
/* idVilleResidence ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', NULL, 10, 0);
/* idVilleNaissance ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, NULL, 'test', NULL, 'wow', '10/09/2003', 10, 10, 0);
/* nomClient ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', NULL, NULL, 'wow', '10/09/2003', 10, 10, 0);
/* prenomClient ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (NULL, 'test', 'test', NULL, 'wow', '10/09/2003', 10, 10, 0);
/* idClient ne peut pas être NULL puisque c'est une clef primaire */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, NULL, '10/09/2003', 10, 10, 0);
/* mailClient ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', NULL, 10, 10, 0);
/* dateDeNaissance ne peut pas être NULL */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 0, 10, 0);
/* idVilleNaissance doit faire référence à une valeur présente dans la table Ville, c'est la contrainte d'intégrité référentielle */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 10, 1, 0);
/* idVilleResidence doit faire référence à une valeur présente dans la table Ville, c'est la contrainte d'intégrité référentielle */

INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (0, 'test', 'test', NULL, 'wow', '10/09/2003', 10, 10, 1);
/* idCategorieClient doit faire référence à une valeur présente dans la table CategorieClient, c'est la contrainte d'intégrité référentielle */


-- Fournisseur :

INSERT INTO Fournisseur (identifiantFournisseur, nomFournisseur) VALUES ('TEST', 'TEST'); 
/* identifiantFournisseur doit être un nombre */

INSERT INTO Fournisseur (identifiantFournisseur) VALUES (4); 
/* nomFournisseur ne peut pas être NULL */

INSERT INTO Fournisseur (nomFournisseur) VALUES ('TEST'); 
/* identifiantFournisseur ne peut pas être NULL puisque c'est une clef primaire */


-- Ville :

INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (5, 'Gard', 'Occitanie');

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (1, NULL, 10, 5); 
/* le nomVille ne peut pas être NULL */

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (2, 'Montpellier', NULL, 5); 
/* le nombreHabitants ne peut pas être NULL */

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (NULL, 'Montpellier', 10, 5); 
/* identifiantVille ne peut pas être NULL puisque c'est une clef primaire */

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (3, 'Montpellier', 10, 4); 
/* identifiantDepartement doit faire référence à une valeur présente dans la table Departement, c'est la contrainte d'intégrité référentielle */

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (4, 'Montpellier', 'oui', 5); 
/* nombreHabitants doit être un nombre entier */

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (5, 'Montpellier', 10, 'oui'); 
/* identifiantDepartement doit être un nombre entier */

INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES ('oui', 'Montpellier', 10, 5); 
/* identifiantVille doit être un nombre entier */


-- CategorieClient :

INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES ('eee', 'fidèle');
/*identifiantCategorieClient ne doit pas être une chaine de caractère*/

INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (NULL, 'fidèle');
/*identifiantCategorieClient est une clef primaire et ne peut donc pas être NULL*/

INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (3, NULL);
/*nomCategorieClient ne peut pas être NULL*/

INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (1, 'test');
/*Ne rempli pas la contraite ck_nomCategorie_CategorieClient car 'test' n'est pas compris entre 'fidèle' et 'classique'*/


-- Reduire :

INSERT INTO Reduire(identifiantPromotion, idProduit, pourcentage) VALUES (1, 2, 100);
INSERT INTO Reduire(identifiantPromotion, idProduit, pourcentage) VALUES (1, 2, 0);
/*pourcentage ne doit pas être supérieur à 99 ou inférieur à 1*/

INSERT INTO Reduire(identifiantPromotion, idProduit, pourcentage) VALUES (NULL, 2, 15);
/*Contrainte de clé primaire qui ne peut pas être null*/

INSERT INTO Promotion (identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (50, 'noël', '20/12/2021','31/12/2021');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (50, 'piano');
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (50, 'piano', 1000, 50);

INSERT INTO Reduire(identifiantPromotion, idProduit, pourcentage) VALUES (50, 99, 15);
/*Contrainte d'intégrité référentielle car l'identifiant 99 n'existe pas dans la table Produit*/

INSERT INTO Reduire(identifiantPromotion, idProduit, pourcentage) VALUES (99, 50, 15);
/*Contrainte d'intégrité référentielle car l'identifiant 99 n'existe pas dans la table Promotion*/

INSERT INTO Reduire(identifiantPromotion, idProduit, pourcentage) VALUES (1, 1, NULL);
/*pourcentage ne peut pas être NULL*/


-- Departement :

INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES ('un', 'Hérault', 'Occitanie'); 
/*identifiantDepartement ne doit pas être une chaine de caractère*/

INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (1, 'Essonne', NULL); 
/*nomRegion ne rempli pas la contrainte nn_nomRegion_Departement puisque nomRegion ne doit pas être null*/

INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (1, NULL, 'Occitanie'); 
/*nomDepartement ne rempli pas la contrainte nn_nomDepartement_Departement puisque nomDepartement ne doit pas être null*/

-- Commande :

INSERT INTO Commande(idCommande) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(idCommande) VALUES (3.2); 
/*Contrainte de type*/

INSERT INTO Commande(idCommande) VALUES (NULL); 
/*Ne peut pas être nul*/

INSERT INTO Commande(dateCommande) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(dateCommande) VALUES (1); 
/*Contrainte de type*/

INSERT INTO Commande(dateCommande) VALUES (NULL); 
/*Ne peut pas être nul*/

INSERT INTO Commande(dateLivraison) VALUES (NULL); 
/*Ne peut pas être nul*/

INSERT INTO Commande(dateLivraison) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(dateLivraison) VALUES (1); 
/*Contrainte de type*/

INSERT INTO Commande(idCommande, dateLivraison, dateCommande, prixCommande, idVilleReception, idClient) VALUES (1,'2003-02-02','2004-02-02',1,1,1);
/*contrainte de domaine*/

INSERT INTO Commande(prixCommande) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(prixCommande) VALUES (1.321); 
/*Contrainte de type*/

INSERT INTO Commande(prixCommande) VALUES (-2); 
/*Contrainte de type*/

INSERT INTO Commande(prixCommande) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(idVilleReception) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(idVilleReception) VALUES (3.2); 
/*Contrainte de type*/

INSERT INTO Commande(idVilleReception) VALUES (NULL); 
/*ne epeut pas être nulle*/

INSERT INTO Commande(idVilleReception) VALUES (40); 
/*Contrainte d'intégrité réferentielle*/

INSERT INTO Commande(idClient) VALUES ('Moris'); 
/*Contrainte de type*/

INSERT INTO Commande(idClient) VALUES (40); 
/*Contrainte d'intégrité réferentielle*/

INSERT INTO Commande(idClient) VALUES (3.2); 
/*Contrainte de type*/

INSERT INTO Commande(idClient) VALUES (NULL); 
/*Ne peut pas être nul*/

-- Produit :

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES ('Moris','Objet',1,1); 
/*Contrainte de type*/

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES (3.2,'Objet',1,1); 
/*Contrainte de type*/

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES (NULL,'Objet',1,1); 
/*Ne peut pas être nul*/

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES (1,NULL,1,1);
/*Ne peut pas être nul*/

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES (1,'Objet',32.12321,1);
/*Contrainte de type*/

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES (1,'Objet',-52,1);
/*Contrainte de domaine*/

INSERT INTO Produit(idProduit,libelle,prixProduit,identifiantCategorie) VALUES (1,'Objet',NULL,1); 
/*Ne peut pas être nul*/

INSERT INTO Produit(identifiantCategorie) VALUES ('Jason'); 
/*Contrainte de type*/

INSERT INTO Produit(identifiantCategorie) VALUES (3.2);
/*Contrainte de type*/

INSERT INTO Produit(identifiantCategorie) VALUES (NULL);
/*Ne peut pas être nul*/

INSERT INTO Produit(idProduit,libelle, prixProduit,identifiantCategorie) VALUES (1,'Yoow',1,40); 
/*Contrainte d'intégrité réferentielle*/

-- SeTrouver :

INSERT INTO SeTrouver(idCommande) VALUES ('Jennifer'); 
/*Contrainte de type*/

INSERT INTO SeTrouver(idCommande) VALUES (NULL); 
/*Ne peut pas être nul*/

INSERT INTO SeTrouver(idCommande) VALUES (40); 
/*Contrainte d'intégrité réferentielle*/

INSERT INTO SeTrouver(idCommande) VALUES (3.2); 
/*Contrainte de type*/

INSERT INTO SeTrouver(idProduit) VALUES ('Jennifer'); 
/*Contrainte de type*/

INSERT INTO SeTrouver(idProduit) VALUES (NULL); 
/*Ne peut pas être nul*/

INSERT INTO SeTrouver(idProduit) VALUES (40); 
/*Contrainte d'intégrité réferentielle*/

INSERT INTO SeTrouver(idProduit) VALUES (3.2); 
/*Contrainte de type*/

INSERT INTO SeTrouver(quantite) VALUES (-30); 
/*Contrainte de type*/

INSERT INTO SeTrouver(quantite) VALUES (3.2); 
/*Contrainte de type*/

INSERT INTO SeTrouver(quantite) VALUES (NULL); 
/*Ne peut pas être nul*/

-- Fournir :

INSERT INTO Fournir(idProduit, identifiantFournisseur) VALUES (NULL, 3);
INSERT INTO Fournir(idProduit, identifiantFournisseur) VALUES (3, NULL);
/* Contrainte de clefs primaires qui ne peuvent pas être nulles */

INSERT INTO Fournir(idProduit, identifiantFournisseur) VALUES (3, 10);
INSERT INTO Fournir(idProduit, identifiantFournisseur) VALUES (10, 3);
/* Contrainte d'intégrité réferentielle, les valeurs doivent faire référence à des valeurs présentes dans les tables concernées */



-- CategorieProduit :

INSERT INTO CategorieProduit(identifiantCategorie,nomCategorie) VALUES (NULL,'classique');
/*Cette requete brise la contrainte de clé primaire */

INSERT INTO CategorieProduit(identifiantCategorie,nomCategorie) VALUES (43210,NULL);
/*Cette requete brise la contrainte is not null de nomCategorie */

-- Promotion :

INSERT INTO Promotion(identifiantPromotion,nomPromotion,dateDebut,dateFin) VALUES (NULL,'test','10/06/2003','14/06/2003');
/*Cette requete brise la contrainte de clé primaire*/

INSERT INTO Promotion(identifiantPromotion,nomPromotion,dateDebut,dateFin) VALUES (45,NULL,'10/06/2003','14/06/2003');
/*Cette requete brise la contrainte is not null du nomPromotion*/

INSERT INTO Promotion(identifiantPromotion,nomPromotion,dateDebut,dateFin) VALUES (45,'test',NULL,'14/06/2003');
/*cette requete brise la contrainte is not null de dateDebut*/

INSERT INTO Promotion(identifiantPromotion,nomPromotion,dateDebut,dateFin) VALUES (45,'test','10/06/2003',NULL);
/*cette requete brise la contrainte is not null de dateFin*/

INSERT INTO Promotion(identifiantPromotion,nomPromotion,dateDebut,dateFin) VALUES (46,'test','14/06/2003','10/06/2003');
/*cette requete brise la contrainte qui dit que dateDebut < dateFin*/