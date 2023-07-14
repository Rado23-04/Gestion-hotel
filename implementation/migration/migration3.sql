-- supprimer les tables cancel, choose et have
DROP TABLE cancel;
DROP TABLE have;
DROP TABLE choose;

--créer les tables receive, room_type, influence et affiliate
CREATE TABLE receive ( 
    id_employee int references receptionist(id),
    id_payment int references payment(id)
);

CREATE TABLE room_type(  
    id serial PRIMARY KEY,
    "name" Varchar(100) NOT NULL
);

CREATE TABLE influence(
    id_price int references price(id),
    id_season int references Season(id)
);

CREATE TABLE affiliate( 
    id_promotion int references promotion(id),
    id_room int references room(id)
);

--Supprimer la colonne "id_hotel":
ALTER TABLE province_available
DROP COLUMN id_hotel CASCADE;

--Ajouter une nouvelle colonne "id_hotel":
ALTER TABLE receptionist
ADD COLUMN id_hotel int references hotel(id);
