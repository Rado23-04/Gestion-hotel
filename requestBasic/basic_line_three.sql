-- Afficher une liste des rooms d'un type donné (chambre simple, twin, vip...), dans un hotel donné 

SELECT room.id_room, room.number, room_type.name, hotel.hotel_name
FROM room
JOIN hotel ON room.id_hotel = hotel.id_hotel
JOIN room_type ON room.id = room_type.id
WHERE room_type.name = 'Vip'
  AND hotel.hotel_name = 'Akory' ;
  
  
