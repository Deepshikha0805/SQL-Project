--Q1. Who is the senior most employee based on job title?
select * from employee
order by levels desc
limit 1;

--Q2. Which country have the most Invoices?
select count(*) as c, billing_country from invoice
group by billing_country 
order by c desc;

--top 3 values of total invoice
select total from invoice
order by total desc
limit 3;

--which city has the best customers?
select sum(total) as invoice_total, billing_city
from invoice 
group by billing_city
order by invoice_total desc

--customer who has spent the most money
select customer.customer_id, customer.first_name,customer.last_name, sum(invoice.total )as total
from customer 
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1