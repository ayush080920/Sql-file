-- groupby=> Collection of similiar value
use world;
select region,count(name) from country group by region;
-- Finding out avg population of a region.
select region,avg(population) from country group by region;
select * from city;
-- count the number of city in a district
select district,count(name) as TotalCity from city group by district;
-- finding out city in districts which population is greater than 1 lakh
-- where (execute first)=>group by =>count
select district,count(name) from city where population>100000 group by district;
-- get total countries which got indepence after 1950 in each continent
select continent,count(name) from country where indepyear>1950 group by continent;
-- where will only filter the data which exist in my original table
-- Differnce between where and having?
-- where clause is used to filter data from the table but having is used to filter the data on aggregate column.
select continent,sum(population) from country group by continent having sum(population)>100;
-- finding out the total population in continent where life expectancy>35.0
select continent,sum(population) from country where lifeexpectancy>35.0 group by continent;
-- Find out the total countries for each government formed  where the total number of country should be greater than 30.
select count(name),governmentform from country group by governmentform having count(name)>30;
--  only for the countries having theier capital greater than 30 and total populatio greater than 3 lakh.
select governmentform,count(name),sum(population) from country where capital>30 group by governmentform having sum(population)>300000;
select continent,region,count(name) from country group by continent,region;



