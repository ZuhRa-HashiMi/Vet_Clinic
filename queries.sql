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

SELECT name
FROM animals
WHERE weight_kg > 10.5;

SELECT *
FROM animals
WHERE neutered = TRUE;

SELECT *
FROM animals
WHERE NAME <> 'Gabumon';

SELECT *
FROM animals
WHERE weight_kg BETWEEN 10.4 AND 17.3;  

BEGIN;
UPDATE animals
SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals

BEGIN;
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';
UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

UPDATE animals
SET species = 'pokemon';
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE
FROM animals;
ROLLBACK;
SELECT * FROM animals;

-- this will show that the table exists
\d animals

BEGIN;
DELETE
FROM animals
WHERE date_of_birth > 'January 1, 2022';
SAVEPOINT younger_deleted;

UPDATE animals
SET weight_kg = weight_kg * (-1);
ROLLBACK TO younger_deleted;
UPDATE animals
SET weight_kg = weight_kg * (-1)
WHERE weight_kg < 0;
COMMIT;
