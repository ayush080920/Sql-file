select database();
-- change to world database
use world;
-- tables
show tables;
-- to see the structure of table
describe city;
-- print data of a table * is used to see all columns
select * from city;
-- to access columns
select name,population from city;
-- columns can be print in any order
select population,name,district from city;

select name,population,population+10 from city;
-- query can be written in multiple line 
-- sql is not case sensitive
select name,
	population,
		district From city;

-- alias for column
select *,population+98+45+698*89/5 as 'New Population' from country;
-- where  clause is use to filter the data
select * from city where countryCode='NLD';  -- filter city for NLD countrycode
-- print city popuulation more than 6 lakh
select * from city where population>600000;
select * from city where countrycode<>'ARG'; -- FILTER city of arg country code(<>,!=)
-- in operator--->filter the data in specific set of values
select * from country where continent='North America';
select * from country where continent='Europe';
-- getting countries name in below continents
select * from country where continent in ('North America','Europe','Asia');
select name,continent,indepyear from country where indepyear in(1901,1960);

-- between operator---->used to filter range of values
select name,continent,indepyear from country where indepyear between 1901 and 1960;
-- not between--->
select name,continent,indepyear from country where indepyear not between 1901 and 1960;
-- not in
select name,continent,indepyear from country where indepyear not in(1901,1960);
show tables;
describe country;
select * from country;



-- Get the code  countryname, region where the region is not middle east
select code,name,region from country where Region <> 'Middle East';
-- get the name indepyear and population with a expected 10% increment in population
select name,indepyear,population,population*0.1+population as Increasedpop from country;
-- get all the columns of the country where lightexpectancy is 38.3 or 66.4
select * from country where LifeExpectancy in(38.3,66.4);
-- get name continent,population,gnp where population is not between 5000 and 200000
select name,continent,population,gnp from country where population not between 5000 and 200000;


-- Like operator---->used to search a pattern
select name from country where name like 'Albania';
-- use special character which called wild card character
-- 1. %-->Finding zero or more character
select name from country where name like 'A%'; -- Countries name start from A
select name from country where name like '%A'; -- Countries name ended from A
select name from country where name like '%Ad%'; -- Countries name having A in the name wherever it was
--  _(underscore)=>1 Character
select name from country where name like 'IR__'; -- get 1 character with one under score IR will be the first two words



