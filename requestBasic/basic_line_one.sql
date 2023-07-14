-- Afficher la liste des receptionnistes, avec l'hotel auquel ils sont rattachés 
--  Elle sélectionne les colonnes nécessaires pour afficher l'identifiant de l'employé

SELECT receptionist.id, receptionist.first_name, receptionist.last_name, hotel.name AS hotel_name
FROM receptionist
JOIN hotel ON receptionist.id_hotel = hotel.id;


