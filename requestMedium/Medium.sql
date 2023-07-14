--Afficher le nombre total de réservation par type de chambre (par exemple : VIP : 30 reservations, Simple : 40 reservations...)
Select room_type,COUNT (*) FROM room_type GROUP BY room_type; 


--Afficher chaque client, et le nombre de fois où il a annulé une reservation
Select Customer, COUNT(*) FROM Customer INNER JOIN reservation 
ON Customer.id = reservation.id WHERE is_cancel = FALSE;


--Afficher les chambres les moins réservés d'un hotel donné
Select reservation, COUNT(*) from reservation INNER JOIN
room ON reservation.id = room.id
INNER JOIN hotel ON 
room.id = hotel.id WHERE name = ? 
GROUP BY reservation 
ORDER BY ASC;


--Afficher la liste des clients, avec le nombre de reservations, le nombre de reservations annulées, et le total d'argent que le client 
--a payé
