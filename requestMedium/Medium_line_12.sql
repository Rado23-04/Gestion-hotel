--Afficher la liste des clients, avec le nombre de reservations, le nombre de reservations annulées, et le total d'argent que le client 
--a payé
Select Customer,(select  COUNT(*) FROM Customer 
INNER JOIN reservation r
ON Customer.id = reservation.id GROUP BY r) AS sum_reservation,
(select COUNT(*) FROM Customer INNER JOIN reservation r 
ON Cutomer.id = reservation.id
WHERE is_cancel = TRUE GROUP BY r) AS sum_reservation_canceled,
(Select payment, COUNT(*) FROM payment 
WHERE Customer.id = payment.id GROUP BY payement) AS sum;