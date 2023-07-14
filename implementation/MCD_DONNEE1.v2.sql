-- Active: 1688028057761@@127.0.0.1@5432@akory_test

-- \c postgres;

-- DROP DATABASE IF EXISTS akory;

-- CREATE DATABASE akory;

-- \c akory;

-- Create "client"
CREATE TABLE "client"(
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    principal_contact VARCHAR(50) NOT NULL,
    address VARCHAR(200) NOT NULL,
    emergency_number VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    CIN BIGINT NOT NULL,
    email VARCHAR(1) NOT NULL,
    password VARCHAR(50) NOT NULL
);
-- Alter table "client"


-- Create table "service"
CREATE TABLE "service"(
    id SERIAL PRIMARY KEY,
    service_name VARCHAR(200) NOT NULL,
    description VARCHAR(200),
    price FLOAT NOT NULL,
    reduction FLOAT
);
-- Alter table "service"


-- Relation "use" :
CREATE TABLE "buy"(
    id SERIAL PRIMARY KEY,
    id_client SERIAL REFERENCES client(id),
    id_service SERIAL REFERENCES service(id)
);

-- Create table "status_client"
CREATE TABLE "status_client"(
    id SERIAL PRIMARY KEY,
    status_arrived INT NOT NULL,
    status_missing INT DEFAULT 'f',
    is_fidelity BOOLEAN DEFAULT 'f',
    is_blacklist BOOLEAN DEFAULT 'f'
);
-- Alter table "status_client"
-- Add FOREIGN KEY
-- id_client SERIAL REFERENCES client(id)


-- Create table "reservation"
CREATE TABLE "reservation"(
    id SERIAL PRIMARY KEY,
    date_arrived TIMESTAMP NOT NULL,
    leaving_date TIMESTAMP NOT NULL,
    number_of_person INT NOT NULL    
);
-- Alter table "reservation"
-- reservation_date TIMESTAMP DEFAULT CURRENT_DATE,
-- add : is_cancel BOOLEAN DEFAULT 'f',
-- drop table : table cancel
-- id_client INT REFERENCES client(id)


-- Create table "payement_method"
CREATE TABLE "payement_method"(
    id SERIAL PRIMARY KEY,
    mobile_money BOOLEAN,
    credit_card BOOLEAN,
    cash BOOLEAN
);
-- Alter table "payement_method"
-- remove : all column (-id)
-- add : name VARCHAR


-- Create table "receptionist"
CREATE TABLE "receptionist"(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    work_contact INT
);
-- Alter table "receptionist"


-- Create table "payement"
CREATE TABLE "payement"(
    id SERIAL PRIMARY KEY,
    payement_date DATE NOT NULL,
    amount_paid FLOAT NOT NULL,
    number_night INT,
    room_occuped INT,
    deadline_payement TIMESTAMP,
    lending_status BOOLEAN,
    total_amount_status BOOLEAN
);
-- Alter table "payement"
-- payement_date TIMESTAMP
-- id_client SERIAL REFERENCES client(id),
-- id_payement_method SERIAL REFERENCES payement_method(id),
-- id_receptionist SERIAL REFERENCES receptionist(id)


-- Create tablel "season"
CREATE TABLE "season"(
    id SERIAL PRIMARY KEY,
    items VARCHAR(50),
    start_date DATE,
    end_date DATE
);


-- Create table "price"
CREATE TABLE "price"(
    id SERIAL PRIMARY KEY,
    cost_per_night FLOAT NOT NULL
);
-- Alter table "price"
-- id_season SERIAL REFERENCES season(id)


-- Create table "rooom_features"
CREATE TABLE "room_features"(
    id SERIAL PRIMARY KEY,
    sea_view BOOLEAN,
    VIP_category BOOLEAN,
    hot_water BOOLEAN,
    wifi_available BOOLEAN,
    room_service BOOLEAN,
    mini_bar BOOLEAN,
    flat_screen BOOLEAN
);


-- Create table "promotion"
CREATE TABLE "promotion"(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    begin DATE DEFAULT CURRENT_DATE,
    end DATE,
    prercent INT NOT NULL
);



-- Create table "room"
CREATE TABLE "room"(
    id SERIAL PRIMARY KEY,
    number VARCHAR(100) NOT NULL,
    room_type VARCHAR(200) NOT NULL,
    capacity_room INT NOT NULL
);
-- Alter table "room"
-- id_price SERIAL REFERENCES price(id),
-- id_promotion SERIAL REFERENCES promotion(id),
-- id_room_features SERIAL REFERENCES room_features(id)


-- Create table "province_avaible"
CREATE TABLE "province_avaible"(
    id SERIAL PRIMARY KEY,
    province_name VARCHAR(200) NOT NULL,
    code_province INT
);


-- Create table "hotel"
CREATE TABLE "hotel"(
    id VARCHAR(200) PRIMARY KEY,
    name VARCHAR(200),
    address VARCHAR(200)    
);
-- Alter table "hotel"
-- id INt
-- id_province_avaible SERIAL REFERENCES province_avaible(id)


-- Realation belong
CREATE TABLE "belong"(
    id SERIAL PRIMARY KEY,
    id_room SERIAL REFERENCES room(id),
    id_hotel SERIAL REFERENCES hotel(id)
);

-- card : hotel 1,1- -1,n province
-- add relation hotel 1,n- -1,1 receptionist
-- card : client 0,n- -1,1 payment