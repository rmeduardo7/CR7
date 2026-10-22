USE sakila;

SELECT
COUNT(*) AS quantidade_filmes
FROM film_actor fa
JOIN actor a
ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Nick'
AND a.last_name = 'Wahlberg';

SELECT
c.name AS categoria,
COUNT(fc.film_id) AS quantidade_filmes
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
GROUP BY c.category_id, c.name
ORDER BY quantidade_filmes DESC;

SELECT
a.first_name,
a.last_name,
f.title AS titulo_filme
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
JOIN film f
ON fa.film_id = f.film_id
WHERE f.title LIKE '%BABY%'
ORDER BY f.title;

SELECT
f.title AS titulo_filme,
COUNT(fa.actor_id) AS quantidade_atores
FROM film f
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id
LEFT JOIN film_actor fa
ON f.film_id = fa.film_id
WHERE c.name = 'Games'
GROUP BY f.film_id, f.title
ORDER BY quantidade_atores DESC;

SELECT
c.name AS categoria,
SUM(p.amount) AS total_pagamentos
FROM payment p
JOIN rental r
ON p.rental_id = r.rental_id
JOIN inventory i
ON r.inventory_id = i.inventory_id
JOIN film_category fc
ON i.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id
GROUP BY c.category_id, c.name
ORDER BY total_pagamentos DESC;

SELECT
a.first_name,
a.last_name,
SUM(p.amount) AS total_pagamentos
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
JOIN inventory i
ON fa.film_id = i.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
JOIN payment p
ON r.rental_id = p.rental_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_pagamentos DESC;

SELECT
co.country AS pais,
SUM(p.amount) AS total_pagamentos
FROM payment p
JOIN customer cu
ON p.customer_id = cu.customer_id
JOIN address ad
ON cu.address_id = ad.address_id
JOIN city ci
ON ad.city_id = ci.city_id
JOIN country co
ON ci.country_id = co.country_id
GROUP BY co.country_id, co.country
ORDER BY total_pagamentos DESC;

SELECT
f.title AS titulo_filme,
SUM(p.amount) AS total_pagamentos
FROM payment p
JOIN rental r
ON p.rental_id = r.rental_id
JOIN inventory i
ON r.inventory_id = i.inventory_id
JOIN film f
ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY total_pagamentos DESC;