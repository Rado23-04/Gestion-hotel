-- Afficher la liste des chambres qui seront libres demain --
SELECT * FROM "room" INNER JOIN reservation 
ON "room".id_reservation = reservation.id_reservation 
WHERE leaving_date = current_date();

 -- Afficher le nombre total des réservations par hotel --
 