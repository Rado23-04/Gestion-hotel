--Afficher la liste des chambres occupées actuellement
select * FROM room INNER JOIN reservation
ON room.id = reservation.id 
WHERE current_date BETWEEN (date_arrived and leaving_date);
