-- Please check the question part in every folder for better understanding of answer

-- 1. name start with Y
SELECT name FROM world WHERE name LIKE 'Y%'

-- 2. name end with Y
SELECT name FROM world WHERE name LIKE '%Y'

-- 3. name contain x
SELECT name FROM world WHERE name LIKE '%x%'

-- 4.  name end with '..lang'
SELECT name FROM world WHERE name LIKE '%land'

-- 5. name start with 'C' and end with '..ia'
SELECT name FROM world WHERE name LIKE 'C%' and name LIKE '%ia'

-- 6. name contains 2 o's e.g 'oo'
SELECT name FROM world WHERE name LIKE '%oo%'

-- 7. name contains 3 a's 
SELECT name FROM world WHERE name LIKE '%a%a%a%'

-- 8. name has t as second characters
SELECT name FROM world WHERE name LIKE '_t%' ORDER BY name

-- 9. name has 2 o characters separated by 2 other characters
SELECT name FROM world WHERE name LIKE '%o__o%'

-- 10. name has exactly 4 characters
SELECT name FROM world WHERE name LIKE '____'

-- 11. show names if name is same as capital
SELECT name FROM world WHERE name = capital

-- 12. show name capital name is same as name and contains City as second name
SELECT name FROM world WHERE capital = concat(name, 'City')

-- 13.
select capital, name from world where capital Like concat('%',name,'%');

-- 14.
SELECT capital, name FROM world WHERE capital LIKE concat('%', name, '%') and capital > name;

-- 15.
SELECT name, REPLACE(capital, name, '') FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;