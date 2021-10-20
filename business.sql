select min(price) as "Min Price", max(price) as "Max Price " from titles

select avg(price::numeric)::money from titles

select sum(price) from titles -- where price is not null

 
select count(price) from titles

select price from titles

select count(price) is null as "Price Null" from titles

select count(*) from titles

select *from titles

-- select title, price and advance columns when price is between 10 and 20
select title, price, advance from titles where price::numeric between 10 and 20


select type, max(price) as "Max price" from titles  group by type


select t.title, t.pub_id, t.advance ame from titles t inner join publishers p t.pub_id =  p.pub_id 


select substr(au_fname, 1,1), au_lname from authors where state !='CA'