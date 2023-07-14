--Afficher la liste des payements avec le nom et le prénom du réceptionniste que les a reçus

SELECT payment.* , receptionist.first_name , receptionist.last_name 
FROM payment 
INNER JOIN receive  ON payment.id_payment  = receive.id_payment 
INNER JOIN receptionist ON receive.id_receptionist = receptionist.id_receptionist 


