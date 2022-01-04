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
