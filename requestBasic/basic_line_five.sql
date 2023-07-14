-- Afficher la liste des réservations d'un client donné 
-- Cette requête affiche tout les réservations d'un client 
SELECT * 
FROM reservation r
INNER JOIN customer c ON r.id = r.id_customer
WHERE r.id_customer = 1 ;


