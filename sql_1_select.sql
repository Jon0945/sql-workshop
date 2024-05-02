# SQL select query exercise
#
# World database layout:
# To use this database from a default MySQL install, type: use world;
#
# Table: City
# Columns: Id,Name,CountryCode,District,Population
#
# Table: Country
# Columns: Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, Capital
#
# Table: CountryLanguage
# Columns: CountryCode, Language, IsOfficial,Percentage
#
# USE world;
# 1: Get a query to return "Hello World", 123
# (Hint: 1 row, 2 columns)
SELECT "hello world" as message , 123 as id;
#
# 2: Get everything from the city table
# (Hint: Many many rows)
SELECT * from city;
#
# 3: Get everything on the cities whose district is "aceh"
# (Hint: 2 rows)
SELECT * from city WHERE district = "aceh";
#
# 4: Get only the name of the cities where the countrycode is "bfa"
SELECT Name FROM city WHERE CountryCode = "bfa";
#
# 5: Get both the name and district of the cities where the countrycode is "tto"
SELECT Name, District FROM city WHERE CountryCode = "tto";
#
# 6: Get the name and district named as nm,dist from the cities where the countrycode is "arm"
SELECT Name AS Nm, District as dist FROM city WHERE CountryCode="arm";
#
# 7: Get the cities with a name that starts with "bor"
SELECT Name AS CityName from city where Name LIKE 'bor%';
#
# 8: Get the cities with a name that contains the string "orto"
SELECT * FROM city WHERE Name LIKE "%orto%";
#
# 9: Get the cities that has a population below 1000
SELECT * FROM city WHERE population<1000;
#
# 10: Get the unique countrycodes from the cities that has a population below 1000
SELECT DISTINCT CountryCode FROM city WHERE population<1000;
#
# 11: Get the cities with the countrycode UKR that has more than 1000000 (one million) in population
SELECT Name FROM city WHERE CountryCode LIKE "UKR" AND population>1000000;
#
# 12: Get the cities with a population of below 200 or above 9500000 (9.5 million)
SELECT Name FROM city WHERE population<200 OR population>9500000;
#
# 13: Get the cities with the countrycodes TJK, MRT, AND, PNG, SJM
SELECT * FROM city WHERE CountryCode IN ( 'TJK', 'MRT', 'AND', 'PNG', 'SJM'); 
#
# 14: Get the cities with a population between 200 and 700 inclusive
SELECT * from city WHERE population >= 200 AND population <=700;
SELECT * from city WHERE population BETWEEN 200 and 700;
#
# 15: Get the countries with a population between 8000 and 20000 inclusive
SELECT * from country WHERE Population BETWEEN 8000 AND 20000;
#
# 16: Get the name of the countries with a independence year (indepyear) before year 0
SELECT * from country WHERE IndepYear <0;
#
# 17: Get the countries that has no recorded independence year and a population above 1000000
SELECT * from country WHERE IndepYear IS null AND population>1000000;
#
# 18: Get countries with a SurfaceArea below 10 and a defined LifeExpectancy
SELECT * from country WHERE LifeExpectancy IS NOT null AND SurfaceArea<10; 
