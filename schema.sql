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
