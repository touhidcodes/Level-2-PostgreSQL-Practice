-- Active: 1709927137429@@127.0.0.1@5432@postgres_practice
SELECT country, count(*) from students
GROUP BY country

SELECT country, count(*), avg(age) from students
GROUP BY country

SELECT country, count(*), avg(age) from students
GROUP BY country 
HAVING avg(age) >21