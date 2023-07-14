--Afficher la liste des chambres occupées actuellement

SELECT  room.number
FROM room 
INNER JOIN reservation ON room.id = reservation.id_room
WHERE reservation.is_cancel = false
AND reservation.leaving_date >= CURRENT_DATE;
