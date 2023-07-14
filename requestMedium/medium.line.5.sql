-- Afficher le nombre total des réservations par hotel --
SELECT  hotel.name,COUNT(reservation.id_reservation) as Count_Reservation FROM romm INNER JOIN reservation
ON room.id_reservation = reservation.id_reservation INNER JOIN hotel 
ON romm.id_hotel = hotel.id GROUP BY hotel;
