/*Récupère la somme des prix des commandes contenant le produit Gewa Pro Natura Silver 1/2 Maple et qui sont passées par les clients qui habitent dans la ville de Sète */
SELECT SUM(prixCommande) as PrixCommande
FROM Commande C
Join seTrouver T ON T.idCommande=C.idCommande
Where T.idProduit IN (SELECT idProduit
                      From Produit
                      where libelle = 'Gewa Pro Natura Silver 1/2 Maple')
AND C.idClient IN (SELECT idClient
                   From Client C
                   Join Ville V ON V.identifiantVille=C.idVilleResidence
                   Where nomVille = 'Sète') ;

/* retourne {99.9} */

/* Récupère le nom des fournisseurs qui fournissent un produit dont le prix est supérieur à 50 */
SELECT nomFournisseur
FROM Fournisseur
where identifiantFournisseur IN (SELECT identifiantFournisseur
                                 FROM Fournir f
                                 Join Produit p ON f.idProduit = p.idProduit
                                 where prixProduit > 50);
/* renvoie {LeFilsDarianne,Le Doré,LaBelleTouche,fauré,un bon grieg et au liszt, Basse inné , La ré du do}*/

/*Récuperer l'id produit et l'identifiant de promotion pour les pourcentages de réduction supérieur ou égal à 35 et lorsque le nom de la promotion contient la lettre 'o' et que le prix du produit est inférieur à 150*/
SELECT idProduit , R.identifiantPromotion
FROM Reduire R
Join Promotion P ON P.identifiantPromotion=R.identifiantPromotion 
where pourcentage > 34 AND idProduit IN (SELECT idProduit
                                         From Produit 
                                         where prixProduit < 150)
AND nomPromotion LIKE '%o%';
/* Retourne {1, 4} et {8, 5} */

/* Récupère les id distinctes des commandes qui contiennent des produits appartenant à la catégorie Batterie */
SELECT DISTINCT idCommande 
FROM SeTrouver
WHERE idProduit IN (SELECT idProduit
					FROM Produit
					WHERE identifiantCategorie IN (SELECT identifiantCategorie
													FROM categorieProduit
													WHERE nomCategorie = 'Batterie'));
/* Retourne 1, 2, 10 */
                         
/*Récupère toutes les infos sur les clients habitant dans le département d'id 34 qui n'ont passé aucune commande*/
SELECT * FROM Client
WHERE idClient IN(SELECT idClient FROM Client
                MINUS
                SELECT idClient FROM Commande) 
AND idVilleResidence IN (SELECT identifiantVille FROM Ville
                        WHERE identifiantDepartement = 34);
/*Retourne les infos sur les clients 5,6 & 7*/

/*Renvoie l'idProduit et la quantité des produits dont le prix est supérieur à 100 du plus chère au moins chère s'il a été commandé par un client VIP */
SELECT s.quantite, s.idProduit
FROM SeTrouver s
JOIN Produit p ON p.idProduit=s.idProduit
WHERE p.prixProduit > 100 AND s.idCommande IN ( SELECT idCommande FROM Commande
                                                WHERE idClient IN ( SELECT idClient FROM Client
                                                                    WHERE idCategorieClient IN (SELECT identifiantCategorieClient FROM CategorieClient
                                                                                                WHERE nomCategorieClient = 'VIP')
                                                                  )
                                               )
ORDER BY p.prixProduit DESC;
/* Retourne (1,3) (2,2) (1,2) (2,8)*/

/*Récupère le nom des clients qui sont des VIP mais qui ont également acheté un instrument dans la catégorie guitare*/
SELECT nomClient FROM Client
WHERE idClient IN ( SELECT idClient FROM Client c
                    JOIN CategorieClient cc ON c.idCategorieClient = cc.identifiantCategorieClient
                    WHERE nomCategorieClient='VIP'
                    INTERSECT
                    SELECT idClient FROM Commande com
                    JOIN SeTrouver st ON com.idCommande = st.idCommande
                    WHERE com.idCommande IN(SELECT idProduit FROM Produit
                                        WHERE identifiantCategorie IN ( SELECT identifiantCategorie FROM CategorieProduit
                                                                        WHERE nomCategorie='Guitare')
                                        )
                  );
/*Retourne Bigard*/

/*Pour chaque ville de résidence (qui possède des clients qui sont professeurs de musique ou musiciens pro ou VIP ou bien qui ont reçu un produit dans une ville de l'Hérault), on indique l'identifiant de la ville de résidence ainsi que le nombre de clients de la ville. Les villes sont rangées dans l'ordre croissant de leur nombre d'habitants.*/
SELECT idVilleResidence, COUNT(idClient) AS NBCLIENT
FROM Client
WHERE idCategorieClient IN (SELECT identifiantCategorieClient FROM CategorieClient
                            WHERE nomCategorieClient='VIP' OR nomCategorieClient='Professeur de musique' OR nomCategorieClient='Musicien professionel') 
OR idClient IN (SELECT DISTINCT idClient FROM Commande
                WHERE idVilleReception IN ( SELECT identifiantVille FROM Ville
                                            WHERE identifiantDepartement IN(SELECT identifiantDepartement FROM Departement
                                                                            WHERE nomDepartement='Hérault'
                                                                            )
                                            )
                )
GROUP BY idVilleResidence
ORDER BY NBCLIENT;
/*renvoie (10,1);(11,1);(2,1);(9,1);(8,1);(1,2)(4,2)*/

/*Pour chaque département se situant en Occitanie (qui possède des villes et dont les habitants ont commandé un instrument dans la catégorie piano ou guitare), on indique l'identifiant du département ainsi que le nombre de ville du département.*/
SELECT identifiantDepartement, COUNT(identifiantVille) AS NBVILLE
FROM Ville
WHERE identifiantDepartement IN(SELECT identifiantDepartement FROM Departement
                                WHERE nomRegion='Occitanie') 
AND identifiantVille IN(SELECT idVilleResidence FROM Client
                        WHERE idClient IN ( SELECT idClient FROM Commande
                                            WHERE idCommande IN(SELECT idCommande FROM SeTrouver
                                                                WHERE idProduit IN (SELECT idProduit FROM Produit
                                                                                    WHERE identifiantCategorie IN (SELECT identifiantCategorie FROM CategorieProduit
                                                                                                                    WHERE nomCategorie='Piano' OR nomCategorie='Guitare')
                                                                                    )
                                                                )
                                            )
                        )
GROUP BY identifiantDepartement;
/*renvoie (34,2)*/

/*On indique le code des clients habitant dans une ville en Hérault ainsi que le nombre de commande qu'ils ont passé*/
SELECT idClient, COUNT(idCommande) AS NBCOMMANDES
FROM Commande 
WHERE idClient IN(
    SELECT idClient FROM Client
    WHERE idVilleResidence IN(
        SELECT identifiantVille FROM Ville
        WHERE identifiantDepartement IN(
            SELECT identifiantDepartement FROM Departement
            WHERE nomDepartement='Hérault'
        )
    )
)
GROUP BY idClient;
/*renvoie (1,2);(2,2);(4,1);(8,1);(3,1);(10,2);(9,1)*/

/*Retourne le prix moyen des commandes reçu dans le département 34 et passé par les clients 'DJ' */
SELECT AVG(prixCommande) AS prixMoyen
FROM Commande com
JOIN Client cli ON com.idClient = cli.idClient
JOIN CategorieClient catC ON catC.identifiantCategorieClient = cli.idCategorieClient
JOIN Ville v ON v.identifiantVille = com.idVilleReception
WHERE identifiantDepartement = 34 AND nomCategorieClient = 'DJ';
/* Retourne 43 */

/* Retourne le nombre de clients habitant dans chaque département */
SELECT nomDepartement, COUNT(*) AS nbHabitants
FROM Departement d
JOIN Ville v ON d.identifiantDepartement = v.identifiantDepartement
JOIN Client c ON v.identifiantVille = c.idVilleResidence
GROUP BY nomDepartement;
/* (Hérault,10) (Gard,1)*/

/*La date de naissance des clients qui habitent à Montpellier et les clients qui ont acheté le produit le plus cher*/
SELECT dateDeNaissance FROM Client
WHERE idClient IN ( SELECT idClient FROM Commande
                    WHERE idCommande IN(SELECT idCommande FROM SeTrouver
                                        WHERE idProduit IN (SELECT idProduit FROM Produit
                                                            WHERE prixProduit IN (SELECT MAX(prixProduit) FROM Produit)
                                                            )
                                        )
                    UNION
                    SELECT idClient FROM Client
                    WHERE idVilleNaissance IN(SELECT identifiantVille FROM Ville
                                                WHERE nomVille='Montpellier')
                    );
/*Renvoie 11/08/02 & 13/08/58*/

/*Retourne l'identifiant de la promotion et le nom de la promotion ayant le pourcentage de réduction le plus bas parmi les promotions réduisant le prix des guitares */
SELECT p.identifiantPromotion , p.nomPromotion
FROM Promotion p
JOIN Reduire r ON p.identifiantPromotion = r.identifiantPromotion
WHERE pourcentage = (SELECT MIN(pourcentage)
			         FROM Reduire
                     WHERE idProduit IN(SELECT idProduit FROM Produit
                                         WHERE identifiantCategorie IN(SELECT identifiantCategorie FROM CategorieProduit
                                                                        WHERE nomCategorie='Guitare')
                                        )
                    );
/*Retourne (4, Anniversaire du Banger Shop, 15/03/22, 16/03/22)*/
