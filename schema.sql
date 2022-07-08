/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id integer NOT NULL PRIMARY KEY,
    name varchar(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg REAL NOT NULL,
);

ALTER TABLE animals ADD species varchar(100);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(100) NOT NULL,
    age INT
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100) NOT NULL
);


ALTER TABLE animals DROP COLUMN id;  
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;
ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN species_id INT,
ADD CONSTRAINT fk_species
FOREIGN KEY (species_id)
REFERENCES species (id);

ALTER TABLE animals ADD COLUMN owner_id INT,
ADD CONSTRAINT fk_owners
FOREIGN KEY (owner_id)
REFERENCES owners (id);