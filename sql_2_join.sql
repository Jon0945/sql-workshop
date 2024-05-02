# SQL Join exercise
#

#
# 1: Get the cities with a name starting with ping sorted by their population with the least populated cities first
SELECT * FROM city WHERE Name LIKE "ping%" ORDER BY Population ASC;
#
# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first
SELECT * FROM city WHERE Name LIKE "ran%" ORDER BY Population DESC;
#
# 3: Count all cities
SELECT COUNT(*) AS Total_Cities from city;
#
# 4: Get the average population of all cities
SELECT AVG(Population) AS Average_Population from city;
#
# 5: Get the biggest population found in any of the cities
SELECT * from city ORDER BY Population DESC LIMIT 1;
#
# 6: Get the smallest population found in any of the cities
SELECT * from city ORDER BY Population ASC LIMIT 1;
#
# 7: Sum the population of all cities with a population below 10000
SELECT SUM(Population) AS Total_Population FROM city WHERE Population <10000;
#
# 8: Count the cities with the countrycodes MOZ and VNM
SELECT COUNT(*) FROM City WHERE CountryCode IN('MOZ', 'VNM');
#
# 9: Get individual count of cities for the countrycodes MOZ and VNM
SELECT CountryCode,Count(*) FROM City WHERE CountryCode IN('MOZ', 'VNM') group by CountryCode; 
#
# 10: Get average population of cities in MOZ and VNM
SELECT Name,AVG(Population) FROM City WHERE CountryCode IN('MOZ', 'VNM') Group by Name;
#
# 11: Get the countrycodes with more than 200 cities
SELECT CountryCode,Count(CountryCode) AS NumberOfCities FROM City Group by CountryCode HAVING NumberOfCities >200; 
#
# 12: Get the countrycodes with more than 200 cities ordered by city count
SELECT CountryCode,Count(CountryCode) AS NumberOfCities FROM City Group by CountryCode HAVING NumberOfCities >200 ORDER BY NumberOfCities ASC; 
#
# 13: What language(s) is spoken in the city with a population between 400 and 500 ?
SELECT language from countrylanguage cl JOIN city ct ON cl.CountryCode =ct.CountryCode WHERE ct.Population BETWEEN 400 and 500;
#
# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them
SELECT Name,language,Population from countrylanguage cl JOIN city ct ON cl.CountryCode =ct.CountryCode WHERE ct.Population BETWEEN 500 and 600 group by ct.Name;
#
# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)

#
# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
#
#
# 17: What are the city names in the country where Luanda is capital?
#
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
#
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
#
#
# 20: Get the name of the most populous city
#
