-- functions 
-- set of statements
-- Reusable code
-- Two types of function
-- scaler function -->it runs row by row(result for each row)
-- multi-line function-->It runs on multiple line and give one output.
-- scaler can apply: date,int,float,string
-- String functions
-- case conversion
use world;
-- upper,lower function=>conver the data in upper and lower case
select name,continent,upper(name),lower(name) FROM country;
-- cocat method=>use to join data.
select name,continent,concat(continent,'-','regex') FROM country;
-- concat_ws=> join data with a seperator
select name,continent,concat_ws('--',continent,'regex',code) FROM country;