--Supprimer la colonne "id_province"
ALTER TABLE province_available
DROP COLUMN id_province;

--Ajouter une nouvelle colonne "id_province" avec le type de données "serial" :
ALTER TABLE province_available
ADD COLUMN id_province serial PRIMARY KEY;

--Supprimer la colonne "id_hotel":
ALTER TABLE hotel
DROP COLUMN id_hotel CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE hotel
ADD COLUMN id serial PRIMARY KEY;

--Supprimer la colonne "id_employee"
ALTER TABLE receptionist
DROP COLUMN id_employee CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE receptionist
ADD COLUMN id serial PRIMARY KEY;

--Supprimer la colonne "id_client":
ALTER TABLE customer
DROP COLUMN id_client CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE customer
ADD COLUMN id serial PRIMARY KEY;

--Supprimer la colonne "id_payement_method":
ALTER TABLE payment_method
DROP COLUMN id_payement_method CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE payment_method
ADD COLUMN id serial PRIMARY KEY;

--Modifier le type de données de la colonne "date" dans la table "payment" de date à timestamp :
ALTER TABLE payment
ALTER COLUMN "date" TYPE timestamp;

--Modifier le type de données de la colonne "deadline" dans la table "payment" de Varchar(200) à timestamp :
UPDATE payment
SET deadline = CAST(deadline AS TIMESTAMP);

--Supprimer la colonne "id_payment":
ALTER TABLE payment
DROP COLUMN id_payment CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE payment
ADD COLUMN id serial PRIMARY KEY;


--Supprimer la colonne "id_service":
ALTER TABLE "service"
DROP COLUMN id_service CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE "service"
ADD COLUMN id serial PRIMARY KEY;

--Supprimer les colonnes dans la table "use" :
ALTER TABLE "use"
DROP COLUMN id_client;

ALTER TABLE "use"
DROP COLUMN id_service;

--Ajouter les colonnes dans la table "use" :
ALTER TABLE "use"
ADD COLUMN id_customer int references customer(id);


ALTER TABLE "use"
ADD COLUMN id_service int references "service"(id);

--Supprimer la colonne "id_status_client":
ALTER TABLE "status_client"
DROP COLUMN id_status_client CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE "status_client"
ADD COLUMN id serial PRIMARY KEY;

--Modifier le type de données de la colonne "arrived" et "missing" dans la table "status_client" de int à boolean :

ALTER TABLE "status_client"
DROP COLUMN arrived CASCADE;

ALTER TABLE "status_client"
DROP COLUMN missing CASCADE;

ALTER TABLE "status_client"
ADD COLUMN arrived boolean;

ALTER TABLE "status_client"
ADD COLUMN missing boolean;

--Supprimer la colonne "id_features":
ALTER TABLE "room_features"
DROP COLUMN id_features CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE "room_features"
ADD COLUMN id serial PRIMARY KEY;

----Supprimer la colonne "VIP_category":
ALTER TABLE "room_features"
DROP COLUMN VIP_category CASCADE;

--Supprimer la colonne "id_season":
ALTER TABLE Season
DROP COLUMN id_season CASCADE;

--Ajouter une nouvelle colonne "id" avec le type de données "serial" :
ALTER TABLE Season
ADD COLUMN id serial PRIMARY KEY;

--Modifier le nom de la colonne "id_price_by_season" en "id" dans la table "price":
ALTER TABLE price
RENAME COLUMN id_price_by_season TO id;

--Ajouter les colonnes "id_room" et "id_season" :

ALTER TABLE "price"
DROP COLUMN id_room CASCADE;

ALTER TABLE "price"
DROP COLUMN id_season CASCADE;