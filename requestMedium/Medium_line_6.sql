--Afficher chaque client, et le nombre de fois où il a annulé une reservation
Select Customer, COUNT(*) FROM Customer INNER JOIN reservation 
ON Customer.id = reservation.id WHERE is_cancel = TRUE GROUP BY Customer;


