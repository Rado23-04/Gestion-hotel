-- Afficher la liste des chambres qui répondent à de multiples critères,
-- par ex: y a le wifi, eau chaude, balcon, jacuzzi,
-- et qui peuvent contenir X personnes selon le besoin du client
 

SELECT room.number from room 
INNER JOIN room_features 
ON room.id_room = room.id_features
WHERE room_features.wifi_avaible = TRUE
GROUP BY room.number ;

