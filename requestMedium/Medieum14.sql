--Afficher la liste des chambres, avec leur prix brut, et leur prix net (c'est-à-dire leur prix en appliquant toutes les réductions qui 
--sont appliquées aujourd'hui)


SELECT
room.number  ,
room.cost_per_night AS gross_price ,
((room.cost_per_night)-(promotion.percent)) AS net_price
FROM room 
INNER JOIN affiliate ON  affiliate.id_room = room.id_room
INNER JOIN price ON room.id_price = price.id_price
INNER JOIN promotion ON affiliate.id_room = affiliate.id_promotion
where current_date() >= promotion.begin  AND current_date() <= promotion.end ;