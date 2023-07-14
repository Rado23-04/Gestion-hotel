--Afficher la liste des clients, avec le nombre de reservations, le nombre de reservations annulées, et le total d'argent que le client 
--a payé

 SELECT customer.id AS customer_id,customer.first_name,
COUNT(reservation.id) AS total_reservations,
COUNT(CASE WHEN reservation.is_cancel = true THEN reservation.id end) AS canceled_reservations,
SUM(payment.amount_paid) AS total_amount_paid
FROM customer 
LEFT JOIN reservation  ON customer.id = reservation.id_customer
LEFT JOIN payment ON customer.id = payment.id_customer
GROUP BY
customer.id, customer.first_name;