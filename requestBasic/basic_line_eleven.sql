-- Afficher la liste des chambres par prix décroissant 

SELECT *
FROM room
JOIN price ON room.id_price = price.id
ORDER BY price.cost_per_night DESC;
