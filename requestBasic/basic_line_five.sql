-- Afficher la liste des réservations d'un client donné 
-- Cette requête affiche tout les réservations d'un client 
SELECT * 
FROM reservation r
INNER JOIN customer c ON c.id = r.id 
WHERE c.id = 1 ;


