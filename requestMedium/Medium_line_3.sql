--Afficher le nombre total de réservation par type de chambre (par exemple : VIP : 30 reservations, Simple : 40 reservations...)
Select room_type,COUNT (*) FROM room_type GROUP BY room_type; 
