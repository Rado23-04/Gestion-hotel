-- Afficher la liste des hotels dans une localisation (province) donnée

SELECT hotel.*
FROM hotel
JOIN province_available pa ON hotel.id = pa.id_province
WHERE pa.name = 'Antananarivo';