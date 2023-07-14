-- Afficher la liste des chambres libres sur une certaine période --
SELECT room.* NOT IN(SELECT room.* FROM room INNER JOIN reservation 
ON romm.id = reservation.id_room
WHERE date_donne>=date_arrived AND date_donne<=leaving_date); 
-- ###Ici certaine periode est donné par l'utilisateur =>date_donne### --