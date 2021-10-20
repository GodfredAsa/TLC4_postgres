select  avg(price::numeric) from titles


select  avg(price::numeric) from titles


select avg(coalesce(price::numeric, 0)) from titles


-- Q1
select t.type::char(30), avg(coalesce(t.price::numeric, 0)) from titles t group by t.type 


-- Q2
select max(pubdate) - min(pubdate) from titles t


--Q3
select t.type, avg(coalesce(t.price::numeric, 0)), 
	min(coalesce(t.price::numeric, 0)), 
	max(coalesce(t.price::numeric, 0)) from titles t
	group by t.type;
	


--Q4 my implementation 
select t.type,t.pub_id, avg(coalesce(t.price::numeric, 0)), 
	min(coalesce(t.price::numeric, 0)), 
	max(coalesce(t.price::numeric, 0)) from titles t
	group by t.pub_id, t.type 
	having avg(coalesce(t.price::numeric, 0)) >20;
	
--Q4 Gerald implementation 
select pub_id, type, avg(price::numeric), min(price), max(price) 
from titles t 
group by pub_id, type
having avg(price::numeric) > 20;


select *from authors a 

--Q5 
select title from titles order by character_length(title) 


select avg((date_part('month', current_date))) - avg((date_part('month', pubdate)))  from titles;


select avg((date_part('month', current_date))) - avg((date_part('month', pubdate)))  from titles;

-- Q1 Business 
select avg(date_part('year',age(current_date, pubdate))*12 + date_part('month',age(current_date, pubdate))),type  
from titles group by type



-- Q2 Business 

select  count(au_lname) as "n(Authors)", city from authors group by city 

-- Q3 Business 
select title, length(title) from titles  order by character_length(title) desc
select title, length(title) from titles  order by char_length(title) desc




select *from titles

select sum(ytd_sales) as "Books Sold" from titles

select *from stores 

select stor_name from stores

select s.stor_name, t.title  from titles t inner join stores s on t.title_id = s.stor_id 


select ss.stor_name from sales s inner join stores ss on s.stor_id = ss.stor_id 

-- Q5 Business 
select distinct stor_name, sum(qty)   from stores s inner join sales s2 on s2.stor_id = s.stor_id group by s.stor_name;
select sum(qty) from stores s inner join sales s2 on s2.stor_id = s.stor_id


sales 
stores 

select *from sales

select *from stores 
select *from titles



