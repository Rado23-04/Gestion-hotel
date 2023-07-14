--Renommer la table "Client" en "customer" :
ALTER TABLE Client
RENAME TO customer;

--Renommer la table "payement_method" en "payment_method" :
ALTER TABLE payement_method
RENAME TO payment_method;

--Renommer la table "buy" en "use" :
ALTER TABLE buy
RENAME TO "use";

--Modifier le nom de la colonne "province_name" en "name" dans la table "province_available":
ALTER TABLE province_available
RENAME COLUMN province_name TO "name";

--Modifier le nom de la colonne "code_province" en "code" dans la table "province_available":
ALTER TABLE province_available
RENAME COLUMN code_province TO code;

--Modifier le nom de la colonne "hotel_name" en "name" dans la table "hotel":
ALTER TABLE hotel
RENAME COLUMN hotel_name TO "name";

--Modifier le nom de la colonne "name" en "first_name" dans la table "customer":
ALTER TABLE customer
RENAME COLUMN "name" TO "first_name";

--Modifier le nom de la colonne "payement_date" en "date" dans la table "payment":
ALTER TABLE payment
RENAME COLUMN "payement_date" TO "date";

--Modifier le nom de la colonne "room_occupied" en "room_occupation" dans la table "payment":
ALTER TABLE payment
RENAME COLUMN "room_occupied" TO "room_occupation";

--Modifier le nom de la colonne "deadline_payment" en "deadline" dans la table "payment":
ALTER TABLE payment
RENAME COLUMN "deadline_payment" TO "deadline";

--Modifier le nom de la colonne "service_name" en "date" dans la table "service":
ALTER TABLE "service"
RENAME COLUMN "service_name" TO "name";

--Modifier le nom de la colonne "status_arrived" en "arrived" dans la table "status_client":
ALTER TABLE status_client
RENAME COLUMN status_arrived TO arrived;

--Modifier le nom de la colonne "status_missing" en "missing" dans la table "status_client":
ALTER TABLE status_client
RENAME COLUMN status_missing TO missing;














