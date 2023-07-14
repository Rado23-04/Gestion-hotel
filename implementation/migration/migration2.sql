--Supprimez la colonne "id_province"
ALTER TABLE province_available
DROP COLUMN id_province;

--Ajoutez une nouvelle colonne "id_province" avec le type de données "serial" :
ALTER TABLE province_available
ADD COLUMN id_province serial PRIMARY KEY;

--Supprimez la colonne "id_hotel":
ALTER TABLE hotel
DROP COLUMN id_hotel;

--Ajoutez une nouvelle colonne "id_province" avec le type de données "serial" :
ALTER TABLE hotel
ADD COLUMN id serial PRIMARY KEY;

--Supprimez la colonne "id_employee"
ALTER TABLE receptionist
DROP COLUMN id_hotel;

--Ajoutez une nouvelle colonne "id_province" avec le type de données "serial" :
ALTER TABLE receptionist
ADD COLUMN id serial PRIMARY KEY;






