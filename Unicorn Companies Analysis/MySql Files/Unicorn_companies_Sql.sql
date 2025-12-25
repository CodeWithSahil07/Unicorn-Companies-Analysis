use project ; 

describe unicorn_companies ; 

select * from unicorn_companies ; 


select count(*) from unicorn_companies where funding is null or funding = '';

select count(*) from unicorn_companies where continent is null or trim(continent) = '' ;

select count(*) from unicorn_companies where valuation is null or valuation = '' ;

select count(*) from unicorn_companies where `Date Joined` is null or `Date Joined` = '' ; 

select count(*) from unicorn_companies where `Select Investors` is null or trim(`Select Investors`) = '' ; 


-- check where city data is null or empty string 
select * from unicorn_companies where city is null or trim(city) = '' ; 

-- replace null or empty string with Unknown
update unicorn_companies set city = 'Unknown' where city is null or trim(city) = '';

-- Fix Standardized text in each text column 
update unicorn_companies set 
Company = concat(upper(left(company , 1)) , lower(substring(company , 2))),
city = concat(upper(left(city , 1)) , lower(substring(city , 2))) ,
Industry = concat(upper(left(industry , 1)) , lower(substring(industry , 2))) ;

select company , city , continent , industry from unicorn_companies ; 

-- Now i'll do further cleaning process in powerbi using power query in transformation 









 

