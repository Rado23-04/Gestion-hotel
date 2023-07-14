-- Afficher une liste des rooms d'un type donné (chambre simple, twin, vip...), dans un hotel donné 
-- Cette requête montre type de room dans un hotel 
SELECT room.id, room.number, room_type.name AS room_type, hotel.name AS hotel_name
FROM room
JOIN hotel ON room.id_hotel = hotel.id
JOIN room_type ON room.id_room_type = room_type.id
WHERE room_type.name = 'Vip'
  AND hotel.name = 'Akory A';

  
