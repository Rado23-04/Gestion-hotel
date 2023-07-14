-- Afficher la liste des chambres libres sur une certaine période --
SELECT romm.* NOT IN(SELECT room.* FROM romm INNER JOIN reservation 
ON romm.id_reservation = reservation.id_reservation
WHERE date_donne>=date_arrived AND date_donne<=leaving_date); 
-- ###Ici certaine periode est donné par l'utilisateur =>date_donne### --