create database car_database;
use car_database;

----- READ DATA-----;
select * from car;

---- Total Cars: To get a count of total records----;
select count(*) from car;

---- Manager asked the employee how many cars will be available in 2023 ?-----
select count(*) from car where year=2023;

---- Manager asked the employee how many cars was available in 2020,2021,2022---;
select count(*) from car where year in (2020,2021,2022)
group by year ;

---- Clint asked me to print the total of all cars by year----; 
select year,count(*) from car group by year;

---- Clint asked to car dealer agent how many diesel cars had there in 2020? ----
select count(*) from car where fuel="diesel" and year=2020;

---- Clint asked to car dealer agent how many petrol cars had there in 2020? ----

---- Manager told the employee to give a print of all fuels cars (diesel,petrol and CNG) comes by all year----
select year,count(*) from car where fuel="diesel"group by year;
select year,count(*) from car where fuel="petrol"group by year;
select year,count(*) from car where fuel="CNG"group by year;

---- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?----
select year,count(*) from car group by year having count(*)>100;

---- Manager said to the employee all cars count details between 2015 and 2023,we need complete list----
select count(*) from car where year between 2015 and 2023;

---- Manager said to the employee all cars details between 2015 and 2023,we need complete list----
select * from car where year between 2015 and 2023;



