-- supprimer les tables cancel, choose et have
DROP TABLE cancel;
DROP TABLE have;
DROP TABLE choose;

--creer les tables receive, room_type, influence et affiliate
CREATE TABLE receive ( -- à creer
    id_employee int references receptionist(id),
    id_payment int references payment(id)
);

CREATE TABLE room_type(  -- à creer
    id serial PRIMARY KEY,
    "name" Varchar(100) NOT NULL
);

CREATE TABLE influence( --à creer
    id_price int references price(id),
    id_season int references Season(id)
);

CREATE TABLE affiliate( -- à creer
    id_promotion int references promotion(id),
    id_room int references room(id)
);