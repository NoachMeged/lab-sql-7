-- 1
SELECT last_name, COUNT(*) AS name_count
FROM actor
GROUP BY last_name
HAVING name_count = 1;
-- 2
SELECT last_name, COUNT(*) AS name_count
FROM actor
GROUP BY last_name
HAVING name_count > 1;
-- 3
SELECT 
    staff_id,
    COUNT(rental_id) AS rental_count
FROM 
    rental
GROUP BY 
    staff_id;
-- 4
select release_year, count(film_id) as film_count
from film
group by 
release_year;
-- 5
SELECT rating, COUNT(film_id) AS film_count
FROM  film
GROUP BY 
rating;
-- 6
SELECT rating, ROUND(AVG(length), 2) AS avg_length
FROM film
GROUP BY rating;
-- 7 
SELECT rating, ROUND(AVG(length), 2) AS avg_length
FROM film
GROUP BY rating
HAVING AVG(length) > 120;
