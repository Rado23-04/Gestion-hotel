-- Table province_available
INSERT INTO province_available ("name", code) VALUES 
('Antananarivo', 1), 
('Antsiranana', 2), 
('Fianarantsoa', 3), 
('Mahajanga', 4), 
('Toamasina', 5), 
('Toliara', 6);


-- Table hotel
INSERT INTO hotel ("name", "address") VALUES 
('Akory Hotel A', '123 Rue Principale Antananarivo'),
('Akory Hotel B', '456 Avenue Centrale Antsiranana'),
('Akory Hotel C', '789 Boulevard Nord Fianarantsoa'),
('Akory Hotel D', '321 Rue Est Mahajanga'),
('Akory Hotel E', '654 Avenue Ouest Toamasina'),
('Akory Hotel F', '987 Rue Sud Toliara');

-- Table receptionist
INSERT INTO receptionist (first_name, last_name, "Password", email, work_contact, id_hotel) VALUES 
('John', 'Doe', 'password123', 'john.doe@example.com', '123-456-7890', 1),
('Jane', 'Smith', 'qwerty456', 'jane.smith@example.com', '987-654-3210', 1),
('Michael', 'Johnson', 'secret789', 'michael.johnson@example.com', '555-555-5555', 2),
('Emily', 'Brown', 'letmein123', 'emily.brown@example.com', '111-222-3333', 2),
('David', 'Wilson', 'abc123xyz', 'david.wilson@example.com', '444-444-4444', 3),
('Sarah', 'Taylor', 'p@ssw0rd', 'sarah.taylor@example.com', '999-999-9999', 3),
('Robert', 'Anderson', 'securepwd1', 'robert.anderson@example.com', '777-777-7777', 4),
('Olivia', 'Clark', 'mypassword', 'olivia.clark@example.com', '888-888-8888', 4),
('Daniel', 'Martinez', 'pass1234', 'daniel.martinez@example.com', '123-123-1234', 5),
('Sophia', 'Rodriguez', 'hello5678', 'sophia.rodriguez@example.com', '321-321-3210', 5),
('Matthew', 'Hernandez', 'welcome123', 'matthew.hernandez@example.com', '555-123-4567', 6),
('Isabella', 'Lopez', 'letmein5678', 'isabella.lopez@example.com', '999-555-1234', 6);


-- Table customer
INSERT INTO customer (first_name, last_name, principal_contact, "address", emergency_number, gender, CIN, Email, "Password", id_employee) VALUES 
('John', 'Doe', '123-456-7890', '123 Main Street', '555-555-5555', 'M', 123456789, 'john.doe@example.com', 'password123', 1),
('Jane', 'Smith', '987-654-3210', '456 Elm Street', '111-222-3333', 'F', 987654321, 'jane.smith@example.com', 'qwerty456', 1),
('Michael', 'Johnson', '555-555-5555', '789 Oak Avenue', '444-444-4444', 'M', 246813579, 'michael.johnson@example.com', 'secret789', 2),
('Emily', 'Brown', '111-222-3333', '321 Pine Street', '999-999-9999', 'F', 975318642, 'emily.brown@example.com', 'letmein123', 2),
('David', 'Wilson', '444-444-4444', '654 Cedar Road', '777-777-7777', 'M', 852963741, 'david.wilson@example.com', 'abc123xyz', 3),
('Sarah', 'Taylor', '999-999-9999', '987 Maple Avenue', '888-888-8888', 'F', 369852147, 'sarah.taylor@example.com', 'p@ssw0rd', 3),
('Robert', 'Anderson', '777-777-7777', '741 Oak Street', '123-123-1234', 'M', 789456123, 'robert.anderson@example.com', 'securepwd1', 4),
('Olivia', 'Clark', '888-888-8888', '852 Elm Road', '321-321-3210', 'F', 654123789, 'olivia.clark@example.com', 'mypassword', 4),
('Daniel', 'Martinez', '123-123-1234', '963 Pine Avenue', '555-123-4567', 'M', 987654321, 'daniel.martinez@example.com', 'pass1234', 5),
('Sophia', 'Rodriguez', '321-321-3210', '159 Maple Road', '999-555-1234', 'F', 123456789, 'sophia.rodriguez@example.com', 'hello5678', 5),
('Matthew', 'Hernandez', '555-123-4567', '357 Oak Street', '555-555-5555', 'M', 789654123, 'matthew.hernandez@example.com', 'welcome123', 6),
('Isabella', 'Lopez', '999-555-1234', '258 Pine Avenue', '999-999-9999', 'F', 321654987, 'isabella.lopez@example.com', 'letmein5678', 6);

-- Table payement_method
INSERT INTO payement_method ("name") VALUES 
('mobile monnaie'),
('banque'),
('cash'),
('mobile monnaie'),
('banque'),
('cash'),
('mobile monnaie'),
('banque'),
('cash'),
('mobile monnaie');

-- Table payment
INSERT INTO payment ("date", amount_paid, number_night, room_occupation, deadline, lending_status, total_amount_status, id_payement_method, id_customer) VALUES 
('2023-07-14 10:00:00', 150.00, 3, 2, '2023-07-17 12:00:00', true, true, 1, 1),
('2023-07-15 15:30:00', 200.00, 5, 1, '2023-07-20 12:00:00', false, true, 2, 2),
('2023-07-16 09:45:00', 100.00, 2, 1, '2023-07-18 12:00:00', true, true, 3, 3),
('2023-07-17 11:20:00', 250.00, 7, 2, '2023-07-24 12:00:00', true, true, 1, 4),
('2023-07-18 14:10:00', 180.00, 4, 1, '2023-07-22 12:00:00', false, true, 2, 5),
('2023-07-19 17:30:00', 120.00, 3, 1, '2023-07-22 12:00:00', true, true, 3, 6),
('2023-07-20 09:15:00', 300.00, 6, 2, '2023-07-26 12:00:00', true, true, 1, 7),
('2023-07-21 12:45:00', 150.00, 4, 1, '2023-07-25 12:00:00', false, true, 2, 8),
('2023-07-22 16:20:00', 200.00, 5, 2, '2023-07-27 12:00:00', true, true, 3, 9),
('2023-07-23 10:50:00', 250.00, 7, 2, '2023-07-30 12:00:00', true, true, 1, 10);


-- Table service
INSERT INTO service ("name", "description", price, reduction)
VALUES
    ('Service 1', 'Description 1', 10.99, 0.05),
    ('Service 2', 'Description 2', 15.99, 0.10),
    ('Service 3', 'Description 3', 20.99, 0.15),
    ('Service 4', 'Description 4', 25.99, 0.20),
    ('Service 5', 'Description 5', 30.99, 0.25),
    ('Service 6', 'Description 6', 35.99, 0.30),
    ('Service 7', 'Description 7', 40.99, 0.35),
    ('Service 8', 'Description 8', 45.99, 0.40),
    ('Service 9', 'Description 9', 50.99, 0.45),
    ('Service 10', 'Description 10', 55.99, 0.50);

-- Table buy
INSERT INTO buy (id_client, id_service)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (4, 6),
    (5, 7),
    (5, 8),
    (6, 9),
    (6, 10);

-- Table Client
INSERT INTO Client (id_client, "name", last_name, principal_contact, "address", emergency_number, gender, CIN, Email, "Password", id_employee)
VALUES
    (1, 'John', 'Doe', '1234567890', '123 Main Street', '9876543210', 'M', 123456789, 'john.doe@example.com', 'password123', 1),
    (2, 'Jane', 'Smith', '0987654321', '456 Elm Avenue', '0123456789', 'F', 987654321, 'jane.smith@example.com', 'password456', 2),
    (3, 'Alice', 'Johnson', '1112223333', '789 Oak Lane', '4445556666', 'F', 555444333, 'alice.johnson@example.com', 'password789', 3),
    (4, 'Bob', 'Brown', '9998887777', '321 Pine Road', '2223334444', 'M', 888777666, 'bob.brown@example.com', 'passwordabc', 4),
    (5, 'Emily', 'Davis', '5556667777', '654 Maple Drive', '3334445555', 'F', 777666555, 'emily.davis@example.com', 'passworddef', 5),
    (6, 'Michael', 'Wilson', '8889990000', '987 Cedar Court', '4445556666', 'M', 222333444, 'michael.wilson@example.com', 'passwordxyz', 6),
    (7, 'Olivia', 'Taylor', '4445556666', '654 Elm Avenue', '5556667777', 'F', 666555444, 'olivia.taylor@example.com', 'password789', 7),
    (8, 'Daniel', 'Anderson', '7778889999', '321 Oak Lane', '6667778888', 'M', 999888777, 'daniel.anderson@example.com', 'password123', 8),
    (9, 'Sophia', 'Clark', '2223334444', '789 Pine Road', '7778889999', 'F', 111222333, 'sophia.clark@example.com', 'password456', 9),
    (10, 'James', 'Lee', '3334445555', '123 Maple Drive', '8889990000', 'M', 444555666, 'james.lee@example.com', 'password999', 10);

-- Table buy
INSERT INTO buy (id_client, id_service)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (4, 6),
    (5, 7),
    (5, 8),
    (6, 9),
    (6, 10);

-- Table status_client
INSERT INTO status_client (id_status_client, status_arrived, status_missing, in_fidelity, in_blacklist, id_client)
VALUES
    (1, 5, 2, false, false, 1),
    (2, 3, 1, false, false, 2),
    (3, 0, 0, true, false, 3),
    (4, 1, 0, false, true, 4),
    (5, 4, 2, true, false, 5),
    (6, 2, 0, false, false, 6),
    (7, 0, 0, true, true, 7),
    (8, 3, 1, false, false, 8),
    (9, 1, 0, false, false, 9),
    (10, 5, 3, true, true, 10);

-- Table reservation
INSERT INTO reservation (id_reservation, date_arrived, leaving_date, number_of_person, id_client)
VALUES
    (1, '2023-07-15', '2023-07-20', 2, 1),
    (2, '2023-08-10', '2023-08-15', 1, 2),
    (3, '2023-09-05', '2023-09-10', 3, 3),
    (4, '2023-10-01', '2023-10-07', 2, 4),
    (5, '2023-11-15', '2023-11-20', 4, 5),
    (6, '2023-12-10', '2023-12-15', 2, 6),
    (7, '2024-01-05', '2024-01-10', 1, 7),
    (8, '2024-02-01', '2024-02-07', 3, 8),
    (9, '2024-03-15', '2024-03-20', 2, 9),
    (10, '2024-04-10', '2024-04-15', 1, 10);

-- Table cancel
INSERT INTO cancel (id_cancel, status_cancel, id_reservation)
VALUES
    (1, true, 1),
    (2, false, 2),
    (3, true, 3),
    (4, false, 4),
    (5, true, 5),
    (6, false, 6),
    (7, true, 7),
    (8, false, 8),
    (9, true, 9),
    (10, false, 10);

-- Table promotion
INSERT INTO promotion ("name", "begin", "end", percent)
VALUES
    ('Promotion 1', '2023-07-01', '2023-07-31', 10),
    ('Promotion 2', '2023-08-01', '2023-08-31', 15),
    ('Promotion 3', '2023-09-01', '2023-09-30', 20),
    ('Promotion 4', '2023-10-01', '2023-10-31', 25),
    ('Promotion 5', '2023-11-01', '2023-11-30', 30),
    ('Promotion 6', '2023-12-01', '2023-12-31', 35),
    ('Promotion 7', '2024-01-01', '2024-01-31', 40),
    ('Promotion 8', '2024-02-01', '2024-02-29', 45),
    ('Promotion 9', '2024-03-01', '2024-03-31', 50),
    ('Promotion 10', '2024-04-01', '2024-04-30', 55);

-- Table room_features
INSERT INTO room_features (id_features, sea_view, VIP_category, hot_water, wifi_available, room_service, mini_bar, flat_screen)
VALUES
    (1, true, true, true, true, true, true, true),
    (2, false, true, true, false, true, false, true),
    (3, true, false, true, true, false, true, false),
    (4, false, false, true, true, true, true, true),
    (5, true, true, false, true, true, true, false),
    (6, false, false, false, false, false, false, false),
    (7, true, true, true, false, false, true, true),
    (8, false, true, false, true, false, true, false),
    (9, true, false, true, false, true, false, true),
    (10, false, true, false, true, false, false, true);

-- Table room
INSERT INTO room (id_room, "number", room_type, capacity_room, id_reservation, id_promotion, id_features)
VALUES
    (1, '101', 'Single', 1, 1, 1, 1),
    (2, '202', 'Double', 2, 2, 2, 2),
    (3, '303', 'Triple', 3, 3, 3, 3),
    (4, '404', 'Single', 1, 4, 4, 4),
    (5, '505', 'Double', 2, 5, 5, 5),
    (6, '606', 'Triple', 3, 6, 6, 6),
    (7, '707', 'Single', 1, 7, 7, 7),
    (8, '808', 'Double', 2, 8, 8, 8),
    (9, '909', 'Triple', 3, 9, 9, 9),
    (10, '1010', 'Single', 1, 10, 10, 10);

-- Table have
INSERT INTO have (id_room, id_hotel)
VALUES
    (1, 'HOTEL001'),
    (2, 'HOTEL002'),
    (3, 'HOTEL003'),
    (4, 'HOTEL004'),
    (5, 'HOTEL005'),
    (6, 'HOTEL006'),
    (7, 'HOTEL007'),
    (8, 'HOTEL008'),
    (9, 'HOTEL009'),
    (10, 'HOTEL010');

-- Table Season
INSERT INTO Season (id_season, Itmes, "start_date", end_date)
VALUES
    (1, 'Season 1', '2023-07-01', '2023-07-31'),
    (2, 'Season 2', '2023-08-01', '2023-08-31'),
    (3, 'Season 3', '2023-09-01', '2023-09-30'),
    (4, 'Season 4', '2023-10-01', '2023-10-31'),
    (5, 'Season 5', '2023-11-01', '2023-11-30'),
    (6, 'Season 6', '2023-12-01', '2023-12-31'),
    (7, 'Season 7', '2024-01-01', '2024-01-31'),
    (8, 'Season 8', '2024-02-01', '2024-02-29'),
    (9, 'Season 9', '2024-03-01', '2024-03-31'),
    (10, 'Season 10', '2024-04-01', '2024-04-30');

-- Table price
INSERT INTO price (cost_per_night, id_room, id_season)
VALUES
    (100.00, 1, 1),
    (150.00, 2, 2),
    (200.00, 3, 3),
    (250.00, 4, 4),
    (300.00, 5, 5),
    (350.00, 6, 6),
    (400.00, 7, 7),
    (450.00, 8, 8),
    (500.00, 9, 9),
    (550.00, 10, 10);

-- Table payement_method
INSERT INTO payement_method (id_payement_method, mobile_money, credit_card, cash)
VALUES
    (1, true, false, true),
    (2, false, true, false),
    (3, true, true, true),
    (4, false, false, false),
    (5, true, false, true),
    (6, false, true, false),
    (7, true, true, true),
    (8, false, false, false),
    (9, true, false, true),
    (10, false, true, false);

-- Table choose
INSERT INTO choose (id_payment, id_payement_method)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);


