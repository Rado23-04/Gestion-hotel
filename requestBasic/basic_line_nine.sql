-- Afficher la liste des hotels dans une localisation (province) donnée

SELECT hotel.*  
FROM hotel 
INNER JOIN province_available pa 
ON hotel.id = hotel.id_province ;
WHERE pa.name = 'Antananarivo'  ;
