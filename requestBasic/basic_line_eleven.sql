-- Afficher la liste des chambres par prix décroissant 

SELECT *
FROM room 
INNER JOIN price 
ON room.id = room.id_price
ORDER BY cost_per_night DESC;
