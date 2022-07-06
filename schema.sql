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