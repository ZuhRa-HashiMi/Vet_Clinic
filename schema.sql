/* Database schema to keep the structure of entire database. */
CREATE DATABASE Vet_clinic;

CREATE TABLE animals (
    id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL(10,2) NOT NULL
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

ALTER TABLE animals ADD CONSTRAINT species_fk FOREIGN KEY (species_id) REFERENCES species(id) ON DELETE CASCADE;

ALTER TABLE animals
ADD COLUMN owner_id INT;

ALTER TABLE animals ADD CONSTRAINT owner_fk FOREIGN KEY (owner_id) REFERENCES owners(id) ON DELETE CASCADE;

CREATE TABLE vets (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  date_of_graduation DATE NOT NULL
);

CREATE TABLE specializations (
  id SERIAL PRIMARY KEY,
  vet_id INT REFERENCES vets(id) ON UPDATE CASCADE ON DELETE CASCADE,
  species_id INT REFERENCES species(id) ON UPDATE CASECADE ON DELETE CASCADE
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES animals(id) ON UPDATE CASCADE ON DELETE CASCADE,
    vet_id INTEGER REFERENCES vets(id) ON UPDATE CASCADE ON DELETE CASCADE,
    visit_date DATE NOT NULL
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);