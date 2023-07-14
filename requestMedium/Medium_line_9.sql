--Afficher les chambres les moins réservés d'un hotel donné
Select reservation, COUNT(*) from reservation INNER JOIN
room ON reservation.id = room.id
INNER JOIN hotel ON 
room.id = hotel.id WHERE name = ? 
GROUP BY reservation 
ORDER BY ASC;

