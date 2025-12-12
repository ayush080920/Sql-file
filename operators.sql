-- operator in sql
-- Logical orperator
-- and,or
--  condi1 and cond2
--  condi3 or 
show databases;
use world;
select * from country where continent='Asia' and region='Middle east'; -- In this situation we get the data where continent is asia and region is middle east
select * from country where continent='Africa' or region='Middle east'; -- In this situation we get the data where continent is africa and region will be middle east no matters its from africa or not.
select name,code,concat(name,'',code) from country;
