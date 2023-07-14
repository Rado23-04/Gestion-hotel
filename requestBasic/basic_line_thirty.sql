-- Afficher la liste des hotels qui contiennent des chambres dont la description correspond à des mots clés données 

SELECT DISTINCT hotel.*
FROM hotel
JOIN room ON room.id = room.id_hotel
INNER JOIN room_features ON room.id = room.id_room_features
WHERE EXISTS (
    SELECT 1
    FROM room_features
    WHERE room_features.sea_view LIKE '%mot_clé_1%'
      
   
);

