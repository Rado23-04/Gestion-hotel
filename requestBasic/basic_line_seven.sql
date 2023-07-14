-- Afficher le total des payements reçus par mobile money
--Cette requête montre les sommes payé par mobile money

SELECT SUM(amount_paid) AS total_payments
FROM payment
JOIN payement_method ON payment.id_payement_method = payement_method.id
WHERE payement_method.name = 'Mobile Money';
