-- Afficher la liste des receptionnistes, avec l'hotel auquel ils sont rattachés 
--  Elle sélectionne les colonnes nécessaires pour afficher l'identifiant de l'employé

SELECT receptionist.id_employee, receptionist.first_name, receptionist.last_name, hotel.hotel_name
FROM receptionist
JOIN hotel ON receptionist.id_employee = hotel.id_hotel;


