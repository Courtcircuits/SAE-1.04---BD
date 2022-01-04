/*Catégorie Client*/
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (1, 'DJ');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (2, 'Professeur de musique');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (3, 'Musicien amateur');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (4, 'Musicien professionel');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (5, 'Débutant');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (6, 'Association');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (7, 'Ecole de musique');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (8, 'VIP');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (9, 'Magasin physique');
INSERT INTO CategorieClient(identifiantCategorieClient, nomCategorieClient) VALUES (10, 'Autres');

/*Departement*/
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (09, 'Ariège', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (11, 'Aude', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (12, 'Aveyron', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (30, 'Gard', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (31, 'Haute-Garonne', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (32, 'Gers', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (34, 'Hérault', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (46, 'Lot', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (81, 'Tarn', 'Occitanie');
INSERT INTO Departement(identifiantDepartement, nomDepartement, nomRegion) VALUES (48, 'Lozère', 'Occitanie');

/*Catégorie Produit*/
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (0, 'Piano');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (1, 'Guitare');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (2, 'Violon');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (3, 'Trompette');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (4, 'Flûte');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (5, 'Saxophone');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (6, 'Harmonica');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (7, 'Maracas');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (8, 'Batterie');
INSERT INTO CategorieProduit (identifiantCategorie, nomCategorie) VALUES (9, 'Harpe');

/*Fournisseur*/
INSERT INTO Fournisseur VALUES (1, 'LeFilDarianne');
INSERT INTO Fournisseur VALUES (2, 'LaBelleTouche');
INSERT INTO Fournisseur VALUES (3, 'Basse inné');
INSERT INTO Fournisseur VALUES (4, 'fauré');
INSERT INTO Fournisseur VALUES (5, 'un bon Grieg et au liszt');
INSERT INTO Fournisseur VALUES (6, 'Le DoRé');
INSERT INTO Fournisseur VALUES (7, 'Satie bien');
INSERT INTO Fournisseur VALUES (8, 'Bet Hoven');
INSERT INTO Fournisseur VALUES (9, 'Tronc et Bonne');
INSERT INTO Fournisseur VALUES (10, 'La Ré du Do');

/*Ville*/
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (01, 'Sète', 91276, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (02, 'Montpellier',440896, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (03, 'Béziers', 75999, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (04, 'Agde', 29600, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (05, 'Pézenas', 8156, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (06, 'Lunel', 25178, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (07, 'Marseillan', 7808, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (08, 'Mauguio', 16705, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (09, 'Palavas-les-Flots', 5844, 34);
INSERT INTO Ville (identifiantVille, nomVille, nombreHabitants, identifiantDepartement) VALUES (10, 'Castelnau-le-Lez', 22534, 34);

/*Produit*/
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (0, 'Thomann C-402 NT Set', 89, 1);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (1, 'Gewa Pro Natura Silver 1/2 Maple', 148, 1);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (2, 'Millenium Focus Junior Drum Set Black', 158, 8);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (3, 'Millenium Focus Junior Drum Set Black', 160, 8);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (4, 'TIGER MAR56-NT Maracas à  bois Naturel', 14.99, 7);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (5, 'Millenium Hybrid Practice Drum Set BL', 499, 8);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (6, 'Eastar Captain Blues Harmonica ', 12.27, 6);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (7, 'Stentor Classic Violinset', 109, 2);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (8, 'Classic Cantabile FL-100 flûte traversière', 122.10, 4);
INSERT INTO Produit (idProduit, libelle, prixProduit, identifiantCategorie) VALUES (9, 'Yamaha YAS-62 04 Alto Sax', 2555, 5);

/*Promotion*/
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (1, 'Black Friday', '25/11/2021', '29/11/2021');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (2, 'Noël', '17/12/2021', '25/12/2021');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (3, 'Hot Deals', '31/1/2022', '10/3/2022');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (4, 'Anniversaire de Banger Shop', '15/3/2022', '16/3/2022');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (5, 'Soldes d''hiver', '12/1/2022', '8/2/2022');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (6, 'Solde d''été', '22/06/2022', '19/07/2022');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (7, 'Black Friday', '25/11/2022', '29/11/2022');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (8, 'Black Friday', '25/11/2023', '29/11/2023');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (9, 'Noël', '17/12/2022', '25/12/2022');
INSERT INTO Promotion(identifiantPromotion, nomPromotion, dateDebut, dateFin) VALUES (10, 'Anniversaire de Banger Shop', '15/3/2023', '16/3/2023');

/* Fournir */
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (0,1);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (0,2);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (3,2);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (4,9);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (1,10);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (2,4);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (5,6);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (6,8);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (7,5);
INSERT INTO Fournir (idProduit, identifiantFournisseur) VALUES (8,3);

/*Reduire*/
INSERT INTO Reduire VALUES (4,0,10);
INSERT INTO Reduire VALUES (4,1,50);
INSERT INTO Reduire VALUES (1,0,30);
INSERT INTO Reduire VALUES (1,1,15);
INSERT INTO Reduire VALUES (2,1,25);
INSERT INTO Reduire VALUES (2,3,35);
INSERT INTO Reduire VALUES (5,8,42);
INSERT INTO Reduire VALUES (7,3,5);
INSERT INTO Reduire VALUES (9,9,22);
INSERT INTO Reduire VALUES (8,4,37);

/*Client*/
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (01, 'Bigard', 'Jean-Marie', 0669696969, 'jdefouraille@gmail.com', '17/05/1954', 03, 04, 8);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (02, 'Kujo', 'Dylan', 0765432198, 'nouvautouit.insane@gmail.com', '26/10/2000', 01, 01, 4);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (03, 'Pichon', 'Bernard', 0654321987, 'bernard.pichon34@gmail.com', '06/09/1969', 05, 10, 3);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (04, 'Honnet', 'Andréas', 0778797978, 'sardoche.maiscetaitsurenfait@gmail.com', '28/06/1993', 09, 09, 1);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (05, 'Bricot', 'Judas', 0677889911, 'judas.bricot@gmail.com', '10/09/2003', 06, 01, 2);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (06, 'Nanas', 'Judas', 0655443322, 'judas.nanas@gmail.com', '11/08/2002', 02, 03, 7);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (07, 'Dupont', 'Pierre', 0796327584, 'pierre.dupoont@gmail.com', '15/03/1975', 09, 07, 10);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (08, 'Hello', 'World', 0640440440, 'helloworld@gmail.com', '06/08/1991', 04, 04, 4);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (09, 'Zemmour', 'Éric', 0666666666, 'ZemmourPresident.2022@gmail.com', '31/08/1958', 08, 02, 8);
INSERT INTO Client (idClient, nomClient, prenomClient, numeroTel, mailClient, dateDeNaissance, idVilleNaissance, idVilleResidence, idCategorieClient) VALUES (10, 'Zemmour', 'Éric', 0666666660, 'Zemmourfrancais.benvoyons@gmail.com', '13/08/1958', 02, 08, 2);

/*Commande*/
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(1, '23/1/2019', '27/1/2019', 99.99, 03, 01);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(2, '2/2/2019', '5/2/2019', 12.82, 01, 01);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(3, '25/2/2019', '27/2/2019', 99.99, 01, 02);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(4, '2/3/2019', '5/3/2019', 43.00, 04, 04);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(5, '10/3/2019', '15/3/2019', 21.99, 07, 03);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(6, '17/3/2019', '20/3/2019', 3.99, 06, 10);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(7, '23/3/2019', '25/3/2019', 12.00, 03, 09);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(8, '1/4/2019', '1/5/2019', 42.99, 08, 10);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(9, '20/5/2019', '27/5/2019', 23.00, 09, 08);
INSERT INTO Commande(idCommande, dateCommande, dateLivraison, prixCommande, idVilleReception, idClient) VALUES(10, '23/6/2019', '27/6/2019', 51.90, 10, 02);

/* SeTrouver */
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (1,3,1);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (1,2,2);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (2,2,1);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (3,1,3);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (4,4,2);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (5,0,4);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (6,9,6);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (7,8,2);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (8,7,7);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (9,6,2);
INSERT INTO SeTrouver (idCommande, idProduit, quantite) VALUES (10,5,1);
