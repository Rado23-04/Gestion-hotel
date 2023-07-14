--Afficher les hotels, avec le nombre de chambres par hotels--

SELECT hotel.name , COUNT(room) AS Total_room
FROM   hotel 
INNER JOIN room 
ON hotel.id_hotel = room.id_hotel 
GROUP BY hotel.name ; 
