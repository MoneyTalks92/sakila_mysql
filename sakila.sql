-- 1.feladat
select first_name, last_name
from sakila.actor;

-- 2.feladat
select concat(first_name, ' ', last_name) as 'Actor Name'
from sakila.actor;

select actor_id, first_name, last_name
from sakila.actor
where first_name = 'Joe';

select first_name, last_name
from sakila.actor
where last_name like '%gen%';

select first_name, last_name
from sakila.actor
where last_name like '%li%'
order by last_name, first_name;

-- 3.feladat
select count(distinct last_name)
from sakila.actor;

-- 4.feladat
select last_name
from sakila.actor
group by last_name
having count(*) > 1;

-- 5.feladat
select country_id, country
from sakila.country
where (country = 'China') or (country = 'Afghanistan') or (country = 'Israel');

-- 6.feladat
select avg(length)
from sakila.film;

-- 7.feladat
select sakila.staff.first_name, sakila.staff.last_name, sakila.address.address
from sakila.staff
inner join sakila.address using(address_id);

-- 8.feladat
select sakila.customer.first_name, sakila.customer.last_name, sum(sakila.payment.amount)
from sakila.customer
inner join sakila.payment using(customer_id)
group by first_name, last_name
limit 10;

-- 9.feladat
select sakila.film.title, sakila.actor.first_name, sakila.actor.last_name
from sakila.film_actor
inner join sakila.film using(film_id)
inner join sakila.actor using(actor_id)
group by sakila.film.title
limit 20;