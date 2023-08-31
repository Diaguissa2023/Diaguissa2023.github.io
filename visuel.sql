Requête SQL avant optimisation:

SELECT * FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;


Temps d'exécution: 5.2s



Requête SQL après optimisation:
SELECT orders.order_id, customers.customer_name 
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
WHERE orders.order_date >= '2021-01-01'
INDEX (customer_id);
