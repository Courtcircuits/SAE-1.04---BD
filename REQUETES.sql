/*Récupère la somme des prix des commandes passées par le client 10*/
SELECT SUM(prixCommande) FROM Commande 
WHERE idClient=10;

/*Renvoie tout les noms de fournisseur qui fournisse un produit*/
SELECT nomFournisseur
FROM Fournisseur
where identifiantFournisseur IN (SELECT identifiantFournisseur
                                 FROM Fournir);
                                 
/*Récuperer l'id produit et l'identifiant de promotion pour les pourcentage de reduction superieur ou egal a 35*/
SELECT idProduit, identifiantPromotion
FROM Reduire
Where pourcentage >= 35
Order by pourcentage;

/* Retourne les id distinctes des commandes qui contiennent des produits appartenant à la catégorie Batterie */
SELECT DISTINCT idCommande 
FROM SeTrouver
WHERE idProduit IN (SELECT idProduit
					FROM Produit
					WHERE identifiantCategorie IN (SELECT identifiantCategorie
													FROM categorieProduit
													WHERE nomCategorie = 'Batterie'));
                         
/*Récupère toutes les infos sur les clients qui n'ont passé aucune commande*/
SELECT * FROM Client
WHERE idClient IN(
    SELECT idClient FROM Client
    MINUS
    SELECT idClient FROM Commande
)
/*Les infos sur les clients 5,6 & 7*/
