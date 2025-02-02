
-- Single Table Lab Sheet

CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), checkups SMALLINT UNSIGNED, birth DATE, death DATE);

. schema
. table



INSERT INTO pet (name,owner,species,sex,checkups,birth,death)VALUES
('Fluffy','Harold','cat','f',5,'2001-02-04',NULL),
('Claws','Gwen','cat','m',2,'2000-03-17',NULL),
('Buffy','Harold','dog','f',7,'1999-05-13',NULL),
('Fang','Benny','dog','m',4,'2000-08-27',NULL),
('Bowser','Diane','dog','m',8,'1998-08-31','2001-07-29'),
('Chirpy','Gwen','bird','f',0,'2002-09-11',NULL),
('Whistler','Gwen','bird','',1,'2001-12-09',NULL),
('Slim','Benny','snake','m',5,'2001-04-29',NULL);


/*Q2-1
SELECT name,owner
FROM pet
WHERE name LIKE '%er' or name LIKE '%all';
*/

/*Q2-2
SELECT name,owner
FROM pet
WHERE name LIKE '%e%';
*/

/*Q2-3
SELECT name
FROM pet
WHERE name NOT LIKE '%fy';
*/

/*Q2-4
SELECT name,owner
FROM pet
WHERE LENGTH(owner) = 4;
*/

/*Q2-5
SELECT *
FROM pet 
WHERE owner < 'E' AND (owner LIKE '%A' OR owner LIKE '%B' OR owner LIKE '%C' OR owner LIKE '%D' OR owner LIKE '%E');
*/

 --Q2-6 Question Unclear


--SELECT name, species, birth FROM pet ORDER BY species DESC, birth DESC;

--SELECT * FROM pet WHERE strftime('%m',birth) = strftime('%m','now');

--SELECT *, strftime('%m', birth) AS month FROM pet WHERE death is null;

--SELECT owner, name, (checkups * 20) AS income FROM pet;


--SELECT owner, name, birth, MIN(strftime('%Y',birth)) AS birth FROM pet GROUP BY owner;

--SELECT * FROM pet;
--Q3-1 The average number of check-ups that each owner has made with their pets
--SELECT owner, avg(checkups) as AVG_CHECKUPS FROM pet GROUP BY owner;

--Q3-2. The number of pets of each species in ascending order
--SELECT species, count(species) FROM pet GROUP BY species;

--Q3-3. The number of pets of each species that each owner has
--SELECT owner,species, count(species) FROM pet GROUP BY owner,species;
--Q3-4. The number of distinct species of pet each owner has
--SELECT owner, count(distinct species) FROM pet GROUP BY owner;
--Q3-5. The number of pets of each gender there are in the database, where the gender is known
--SELECT sex,count(sex) FROM pet WHERE sex IS NOT null and sex <> '' GROUP BY sex;
--Q3-6. The number of birds each owner has
--SELECT owner, count (species) FROM pet WHERE species = 'bird' GROUP BY owner;
--Q3-7. The total number of check-ups each owner has made with all their pets
--SELECT owner, sum(checkups) FROM pet GROUP BY owner;
