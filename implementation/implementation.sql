create database akory_hotel;

\c akory_hotel;

CREATE TABLE receptionist(
        id_employee  Int PRIMARY KEY ,
        first_name   Varchar (200) NOT NULL ,
        last_name    Varchar (200) NOT NULL ,
        "Password"     Varchar (50) NOT NULL ,
        email        Varchar (100) NOT NULL ,
        work_contact Int NOT NULL
);

CREATE TABLE Client(
        id_client         Int PRIMARY KEY ,
        "name"              Varchar (200) NOT NULL ,
        last_name         Varchar (200) NOT NULL ,
        principal_contact Varchar (50) NOT NULL ,
        "address"          Varchar (200) NOT NULL ,
        emergency_number  Varchar (50) NOT NULL ,
        gender            Char (1) NOT NULL ,
        CIN               Int NOT NULL ,
        Email             Varchar (1) NOT NULL ,
        "Password"          Varchar (50) NOT NULL ,
        id_employee int references receptionist(id_employee)
);


CREATE TABLE service(
        id_service   Int PRIMARY KEY,
        "service_name" Varchar (200) NOT NULL ,
        "description"  Varchar (200) NOT NULL ,
        price        Float NOT NULL ,
        reduction    Float NOT NULL
);

CREATE TABLE buy (
    id_client int references Client(id_client),
    id_service int references "service"(id_service)
);


CREATE TABLE status_client(
        id_status_client Int PRIMARY KEY ,
        status_arrived   Int NOT NULL ,
        status_missing   Int NOT NULL ,
        in_fidelity      Bool NOT NULL ,
        in_blacklist     Bool NOT NULL ,
        id_client int references Client(id_client)
);


CREATE TABLE reservation(
    id_reservation int PRIMARY KEY,
    date_arrived Date NOT NULL,
    leaving_date Date NOT NULL,
    number_of_person int NOT NULL,
    id_client int references Client(id_client)
);

CREATE TABLE cancel(
    id_cancel int PRIMARY KEY,
    status_cancel Boolean,
    id_reservation int references reservation(id_reservation)
);

CREATE TABLE promotion(
    id_promotion serial PRIMARY KEY,
    "name"         Varchar (100) NOT NULL ,
    "begin"        Date NOT NULL ,
    "end"          Date NOT NULL ,
    percent      Int NOT NULL
);

CREATE TABLE room_features(
        id_features    Int PRIMARY KEY ,
        sea_view       Boolean NOT NULL ,
        VIP_category   Boolean NOT NULL ,
        hot_water      Boolean NOT NULL ,
        wifi_available Boolean NOT NULL ,
        room_service   Boolean NOT NULL ,
        mini_bar       Boolean NOT NULL ,
        flat_screen    Boolean NOT NULL
);


CREATE TABLE room(
    id_room serial PRIMARY KEY,
    "number" Varchar(100),
    room_type Varchar(200),
    capacity_room int,
    id_reservation int references reservation(id_reservation),
    id_promotion int references promotion(id_promotion),
    id_features int references room_features(id_features)
);

CREATE TABLE hotel(
        id_hotel   Varchar (200) PRIMARY KEY,
        hotel_name Varchar (200) NOT NULL ,
        "address"    Varchar (200) NOT NULL
);


CREATE TABLE have(
    id_room int references room(id_room),
    id_hotel Varchar(200) references hotel(id_hotel)
);

CREATE TABLE Season(
        id_season  Int PRIMARY KEY ,
        Items      Varchar (50) ,
        "start_date" Date ,
        end_date   Date
);

CREATE TABLE price(
    id_price_by_season serial PRIMARY KEY,
    cost_per_night Float,
    id_room int references room(id_room),
    id_season int references Season(id_season)
);


CREATE TABLE province_available(
        id_province   Int PRIMARY KEY ,
        province_name Varchar (100) NOT NULL ,
        code_province Int ,
        id_hotel Varchar(200) references hotel(id_hotel)
);


CREATE TABLE payment(
    id_payment serial PRIMARY KEY,
    payement_date date NOT NULL,
    amount_paid float NOT NULL,
    number_night int NOT NULL, 
    room_occupied int NOT NULL,
    deadline_payment Varchar(200) NOT NULL,
    lending_status Boolean NOT NULL,
    total_amount_status Boolean NOT NULL ,
    id_employee int references receptionist(id_employee)
);

CREATE TABLE payement_method(
        id_payement_method serial PRIMARY KEY,
        mobile_money       Bool NOT NULL ,
        credit_card        Bool NOT NULL ,
        cash               Bool NOT NULL
);

CREATE TABLE choose(
    id_payment int references payment(id_payment),
    id_payement_method int references payement_method(id_payement_method)
);
