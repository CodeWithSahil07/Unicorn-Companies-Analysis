use project ; 

select * from cleaned_unicorn_companies_dataset ;

describe cleaned_unicorn_companies_dataset ; 

-- how many total unicorn companies are in the dataset?
select count(company) from cleaned_unicorn_companies_dataset ;

-- which country have the most unicorns 
select country , count(company) as total_unicorns 
 from cleaned_unicorn_companies_dataset 
 group by country order by total_unicorns desc ;

-- which industries has the maximum no of unicorns 
select industry , count(company) as no_of_unicorns 
 from cleaned_unicorn_companies_dataset 
 group by industry order by no_of_unicorns desc ; 
 
-- how many unicorns created year wise 
select `Year Joined`, count(*) as no_of_unicorns_created 
 from cleaned_unicorn_companies_dataset 
 group by `year Joined` order by `Year Joined` asc ; 
 
 -- which year produced max no of unicorns 
 select `Year Joined` , count(*) 
 from cleaned_unicorn_companies_dataset 
 group by `Year Joined` order by count(*) desc limit 1 ; 
 
 -- what is the average time taken to become a unicorn 
 select avg(`Years to unicorn`) as avg_time_taken_in_years
from cleaned_unicorn_companies_dataset ;

-- what is the avg vlauation by industry 
select industry , avg(`Valuation (Million)`) as avg_valuation_in_million
from cleaned_unicorn_companies_dataset
 group by industry order by avg_valuation_in_million desc ; 
 
-- which country generates highest valued unicorn 
select country , max(`Valuation (Million)`) as highest_valuation 
from cleaned_unicorn_companies_dataset 
group by country 
order by highest_valuation desc limit 1 ; 

-- which city are emerging unicorn hub 
select city , count(*) as total_companies
from cleaned_unicorn_companies_dataset 
group by city 
order by total_companies desc limit 1 ; 

-- how many investors funded the highest vlaued unicorn  
select `Number of Investors`, company , `Valuation (Million)`
from cleaned_unicorn_companies_dataset
where `Valuation (Million)` = 
(select max(`Valuation (Million)`) from cleaned_unicorn_companies_dataset) ;


-- whcih unicorn takes minimum year to become fastest unicorn 
select country , company , `Years to unicorn`
from cleaned_unicorn_companies_dataset 
where `Years to unicorn` <= 0 ;

