/*Récupère la somme des prix des commandes passées par le client 10*/
SELECT SUM(prixCommande) FROM Commande 
WHERE idClient=10
