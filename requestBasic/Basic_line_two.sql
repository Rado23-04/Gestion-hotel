-- Afficher la liste des clients qui n'ont pas encore payé en totalité leurs frais

SELECT *
FROM customer c
JOIN payment p ON c.id = p.id_customer
WHERE p.total_amount_status = false;
