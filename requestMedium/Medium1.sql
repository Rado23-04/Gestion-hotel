-- Afficher combien de fois le client a reservé dans nos hotels (tout hotel confondu) --

SELECT customer.first_name,customer.last_name, COUNT(reservation.id_reservation) AS reservation_count
FROM customer
INNER JOIN reservation ON  customer.id_customer = reservation.id_customer
GROUP BY customer.id_customer;

