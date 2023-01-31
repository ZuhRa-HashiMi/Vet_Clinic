/*Queries that provide answers to the questions from all projects.*/
SELECT name
FROM animals
WHERE NAME LIKE '%mon';

SELECT name
FROM animals
WHERE
  date_of_birth BETWEEN 'January 1, 2016' AND 'December 31, 2019';

SELECT name
FROM animals
WHERE neutered = TRUE AND escape_attempts < 3;



SELECT date_of_birth
FROM animals
WHERE NAME IN ('Agumon', 'Pikachu');
