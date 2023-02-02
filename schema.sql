/* Database schema to keep the structure of entire database. */
CREATE DATABASE Vet_clinic;

CREATE TABLE
  animals (
 ID INT PRIMARY KEY	GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(64) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg REAL  NOT NULL
  );

ALTER TABLE animals
ADD COLUMN species VARCHAR(128);

CREATE TABLE
  owners (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(250),
    age INT
   
  );

  CREATE TABLE
  species (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(250)
   
  );

ALTER TABLE animals DROP COLUMN IF EXISTS species;

ALTER TABLE animals
ADD COLUMN species_id INT;