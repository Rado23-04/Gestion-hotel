--Afficher les chambres les moins réservés d'un hotel donné

select room, COUNT(*) as res FROM room INNER JOIN 
reservation ON 
reservation.id = room.id 
INNER JOIN hotel ON
hotel.id = room.id 
WHERE hotel.id = 1
GROUP BY room ORDER BY res ASC;