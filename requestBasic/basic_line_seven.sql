-- Afficher le total des payements reçus par mobile money
--Cette requête montre les sommes payé par mobile money

SELECT SUM(amount_paid) AS total_payments
FROM payment
INNER JOIN payement_method ON payment.id = payement_method.id
WHERE payement_method.mobile_money = TRUE;
