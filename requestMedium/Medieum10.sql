--Afficher les chambres les plus réservés d'un hotel donné--


SELECT room.number
FROM room
INNER JOIN hotel ON room.id_hotel = hotel.id_hotel
INNER JOIN reservation ON room.id_room = reservation.id_room
GROUP BY room.number
ORDER BY COUNT(reservation.id_room) DESC
LIMIT 1 ;      