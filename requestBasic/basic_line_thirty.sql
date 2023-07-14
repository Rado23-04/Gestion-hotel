-- Afficher la liste des hotels qui contiennent des chambres dont la description correspond à des mots clés données 

SELECT DISTINCT hotel.*
FROM hotel
JOIN room ON room.id_hotel = hotel.id
JOIN room_features ON room.id_room_features = room_features.id
WHERE EXISTS (
    SELECT 1
    FROM room
    WHERE room.description LIKE '%mot_clé_1%'
        OR room.description LIKE '%mot_clé_2%'
);
