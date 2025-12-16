-- Aggregate Function(Multi-line function)=>will give you some result;
use world;

-- distinct=>it use use to find out unique values // It can be used as function and statement both.
select distinct continent from country;
select distinct continent,region from country;

-- Aggregate Function
-- It is used to apply some calculation over the set of rows.
-- count=> It is used to cound the data in the rows
select count(indepyear) from country; -- this doesn't missing values
select count(*) from country;  -- this also count missing values
-- sum,average,max,min
select count(population),sum(population),avg(population),
max(population),min(population) from country;
-- Finding count of unique continent.
select count(distinct continent) from country;
-- Finding out the countries in asia which are independent;
select count(*) from country where continent like 'Asia';
-- Get the total countries and total region along with the avg life expectancy and total population for the countries who has got
-- the independence after 1947 before 1998
select * from country;
select count(name),count(region),avg(lifeexpectancy),sum(population) from country where indepyear> 1947 and indepyear< 1998;
-- Get the total number of countries the uniques regions along with the total population and highest
-- life expectancy rate with the total capitals for 
-- the countries starting with letter a or letter d.
select count(distinct region),count(name),sum(population),max(lifeexpectancy),sum(capital)
 from country where name like 'A%' or name like 'D%';
-- group by statement==> It collects similiar value in a group.
-- on the coloumn you are applying group by we can print only that column.
select continent,count(name) from country group by continent;
-- find out the total countries and total population for each independent year.
select count(name),sum(population) ,indepyear from country group by indepyear;
 

 