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

-- Table use
INSERT INTO "use" (id_customer, id_service) VALUES 
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1);

-- Table status_client
INSERT INTO status_client (arrived, missing, in_fidelity, in_blacklist, id_customer) VALUES 
(true, false, false, false, 1),
(true, false, false, true, 2),
(true, true, false, false, 3),
(true, false, true, false, 4),
(true, false, false, true, 5),
(true, true, false, false, 6),
(true, false, true, false, 7),
(true, false, false, true, 8),
(true, true, false, false, 9),
(true, false, true, false, 10);

-- Table room_type
INSERT INTO room_type ("name") VALUES 
('Single Room'),
('Double Room'),
('Twin Room'),
('Triple Room'),
('Suite'),
('Executive Suite'),
('Family Room'),
('Connecting Room'),
('Deluxe Room'),
('Presidential Suite');

-- Table room_features
INSERT INTO room_features (sea_view, hot_water, wifi_available, room_service, mini_bar, flat_screen) VALUES 
(true, true, true, true, true, true),
(true, true, true, false, false, true),
(false, true, true, true, true, false),
(false, true, false, false, true, true),
(true, false, true, true, false, true),
(false, true, true, false, true, false),
(true, false, true, true, false, true),
(true, true, false, false, true, false),
(false, true, true, false, true, true),
(true, false, false, true, true, false);

-- Table Season

INSERT INTO season (Items, "start_date", end_date) VALUES 
('Summer', '2023-06-21', '2023-09-22'),
('Winter', '2023-12-21', '2024-03-20'),
('Spring', '2023-03-20', '2023-06-20'),
('Autumn', '2023-09-23', '2023-12-20'),
('Christmas', '2023-12-24', '2023-12-26'),
('Easter', '2023-04-14', '2023-04-17'),
('New Year', '2023-12-31', '2024-01-01'),
('Valentine s Day', '2023-02-14', '2023-02-14'),
('Independence Day', '2023-07-04', '2023-07-04'),
('Labor Day', '2023-09-04', '2023-09-04');

-- Table price
INSERT INTO price (cost_per_night) VALUES 
(100.00),
(150.00),
(200.00),
(120.00),
(180.00),
(250.00),
(130.00),
(170.00),
(220.00),
(140.00);

-- Table room
INSERT INTO room ("number", capacity_room, id_room_type, id_hotel, id_room_features, id_price) VALUES 
('101', 1, 1, 1, 1, 1),
('102', 2, 2, 1, 2, 2),
('201', 2, 2, 2, 3, 3),
('202', 3, 3, 2, 4, 4),
('301', 2, 2, 3, 5, 5),
('302', 4, 3, 3, 6, 6),
('401', 3, 3, 4, 1, 7),
('402', 4, 4, 4, 2, 8),
('501', 2, 2, 5, 3, 9),
('502', 3, 3, 5, 4, 10);


-- Table reservation
INSERT INTO reservation ("date", date_arrived, leaving_date, number_of_person, is_cancel, id_customer, id_room) VALUES 
('2023-07-14 10:00:00', '2023-07-20', '2023-07-25', 2, false, 1, 1),
('2023-07-15 15:30:00', '2023-08-01', '2023-08-10', 1, false, 2, 2),
('2023-07-16 09:45:00', '2023-07-18', '2023-07-20', 3, false, 3, 3),
('2023-07-17 11:20:00', '2023-07-22', '2023-07-26', 2, false, 4, 4),
('2023-07-18 14:10:00', '2023-07-25', '2023-07-30', 1, false, 5, 5),
('2023-07-19 17:30:00', '2023-07-21', '2023-07-24', 4, false, 6, 6),
('2023-07-20 09:15:00', '2023-07-26', '2023-07-30', 2, false, 7, 7),
('2023-07-21 12:45:00', '2023-07-25', '2023-07-28', 3, false, 8, 8),
('2023-07-22 16:20:00', '2023-07-27', '2023-07-31', 1, false, 9, 9),
('2023-07-23 10:50:00', '2023-07-30', '2023-08-05', 2, false, 10, 10);

-- Table influence
INSERT INTO influence (id_price, id_season) VALUES 
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

-- Table promotion
INSERT INTO promotion ("name", "begin", "end", percent) VALUES 
('Summer Sale', '2023-06-01', '2023-08-31', 20),
('Winter Special', '2023-12-01', '2024-02-29', 15),
('Spring Getaway', '2023-03-15', '2023-05-15', 10),
('Autumn Retreat', '2023-09-01', '2023-11-30', 12),
('Holiday Bonanza', '2023-12-20', '2023-12-31', 25),
('Easter Weekend', '2023-04-10', '2023-04-17', 18),
('New Year Special', '2023-12-26', '2024-01-02', 30),
('Valentine s Day Offer', '2023-02-10', '2023-02-14', 14),
('Independence Day Sale', '2023-07-01', '2023-07-04', 16),
('Labor Day Discount', '2023-09-01', '2023-09-04', 12);


-- Table affiliate
INSERT INTO affiliate (id_promotion, id_room) VALUES 
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


-- Table affiliate
INSERT INTO affiliate (id_promotion, id_room) VALUES 
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