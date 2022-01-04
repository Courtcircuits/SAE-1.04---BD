/*Récupère la somme des prix des commandes passées par le client 10*/
SELECT SUM(prixCommande) FROM Commande 
WHERE idClient=10;
/*Retourne 46.98 */

/*Renvoie tout les noms de fournisseur qui fournisse un produit*/
SELECT nomFournisseur
FROM Fournisseur
where identifiantFournisseur IN (SELECT identifiantFournisseur
                                 FROM Fournir);
/* Retourne 
LeFilDarianne
LaBelleTouche
La Ré du Do
fauré
Tronc et Bonne
Le DoRé
Bet Hoven
un bon Grieg et au liszt
Basse inné 
*/
                                 
/*Récuperer l'id produit et l'identifiant de promotion pour les pourcentage de reduction superieur ou egal a 35*/
SELECT idProduit, identifiantPromotion
FROM Reduire
Where pourcentage >= 35
Order by pourcentage;
/* Retourne (3,2),(4,8),(8,5),(1,4) */

/* Retourne les id distinctes des commandes qui contiennent des produits appartenant à la catégorie Batterie */
SELECT DISTINCT idCommande 
FROM SeTrouver
WHERE idProduit IN (SELECT idProduit
					FROM Produit
					WHERE identifiantCategorie IN (SELECT identifiantCategorie
													FROM categorieProduit
													WHERE nomCategorie = 'Batterie'));
/* Retourne 1, 2, 10 */
                         
/*Récupère toutes les infos sur les clients qui n'ont passé aucune commande*/
SELECT * FROM Client
WHERE idClient IN(
    SELECT idClient FROM Client
    MINUS
    SELECT idClient FROM Commande
)
/*Retourne les infos sur les clients 5,6 & 7*/

/*Renvoie l'idProduit et sa quantité des produits dont le prix est superieur a 100 du plus chère au moins chère */
SELECT quantite , p.idProduit
FROM SeTrouver s
JOIN Produit p ON p.idProduit=s.idProduit
WHERE prixProduit > 100
ORDER BY prixProduit DESC;

/*Récupère le nom des clients qui sont des VIP mais également qui ont acheté un instrument dans la catégorie guitare*/
SELECT nomClient FROM Client
WHERE idClient IN(
    SELECT idClient FROM CategorieClient
    WHERE nomCategorieClient='VIP'
    INTERSECT
    SELECT idClient FROM Commande
    WHERE idCommande IN(
        SELECT idProduit FROM Produit
        WHERE identifiantCategorie IN(
            SELECT identifiantCategorie FROM CategorieProduit
            WHERE nomCategorie='Guitare'
        )
    )
)
/*Retourne Bigard*/

/*Pour chaque ville de résidence (qui possède des clients), on indique l'identifiant de la ville de résidence ainsi que le nombre de clients de la ville.*/
SELECT idVilleResidence, COUNT(idClient) AS NBCLIENT
FROM Client
GROUP BY idVilleResidence;
/*renvoie (1,2);(2,1);(4,2);(8,1);(3,1);(7,1);(10,1);(9,1)*/

/*Pour chaque département (qui possède des villes), on indique l'identifiant du département ainsi que le nombre de ville du département.*/
SELECT identifiantDepartement, COUNT(identifiantVille) AS NBVILLE
FROM Ville
GROUP BY identifiantDepartement;
/*renvoie (34,10)*/

/*Pour chaque client, on indique le code du client ainsi que le nombre de commande passé*/
SELECT idClient, COUNT(idCommande) AS NBCOMMANDES
FROM Commande 
GROUP BY idClient;
/*renvoie (1,2);(2,2);(4,1);(8,1);(3,1);(10,2);(9,1)*/

/*Retourne le prix moyen des commandes */
SELECT AVG(prixCommande) AS prixMoyen
FROM Commande;
/*41,167*/

/* Retourne le nombre de clients habitant dans chaque département */
SELECT nomDepartement, COUNT(*) AS nbHabitants
FROM Departement d
JOIN Ville v ON d.identifiantDepartement = v.identifiantDepartement
JOIN Client c ON v.identifiantVille = c.idVilleResidence
GROUP BY nomDepartement;
/* (Hérault,10) (Gard,1)*/

/*La date de naissance des clients qui habitent à Montpellier et les clients qui ont acheté le produit le plus cher*/
SELECT dateDeNaissance FROM Client
WHERE idClient IN(
    SELECT idClient FROM Commande
    WHERE idCommande IN(
        SELECT idCommande FROM SeTrouver
        WHERE idProduit IN(
            SELECT idProduit FROM Produit
            WHERE prixProduit IN(
                SELECT MAX(prixProduit) FROM Produit
            )
        )
    )
    UNION
    SELECT idClient FROM Client
    WHERE idVilleNaissance IN(
        SELECT identifiantVille FROM Ville
        WHERE nomVille='Montpellier'
    )
)
/*Renvoie 11/08/02 & 13/08/58*/

/*Retourne l'identifiant et le nom de des promotions ayant le pourcentage de réduction le plus bas */
SELECT p.identifiantPromotion , nomPromotion
FROM Promotion p
JOIN Reduire r ON p.identifiantPromotion = r.identifiantPromotion
WHERE pourcentage IN (SELECT MIN(pourcentage)
			FROM Reduire);
/*Retourne (7, Black Friday)*/
