/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1,'Agumon', '2020-02-03', 0, TRUE, '10.23');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (2,'Gabumon', '2018-11-15', 2, TRUE, '8.0');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3,'Pikachu', '2021-01-07', 1, FALSE, '15.04');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (4,'Devimon', '2017-05-12', 5, TRUE, '11.0');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (5, 'Devimon', '2017-05-12', 5, TRUE, '11.0');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (6, 'Charmander', '2020-02-08', 0, FALSE, '-11.0');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (7, 'Plantmon', '2021-11-15', 2, TRUE, '-5.7');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (8, 'Squirtle', '1993-04-02', 3, TRUE, '-12.13');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (9, 'Angemon', '2005-06-12', 1, TRUE, '-45.0');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (10, 'Boarmon', '2005-06-7', 7, TRUE, '20.4');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (11, 'Blossom', '1998-10-13', 3, TRUE, '17.0');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (12, 'Ditto', '2022-05-14', 4, TRUE, '22.0');

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);

INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);

INSERT INTO owners (full_name, age) VALUES ('Bob', 45);

INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);

INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);

INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon');

INSERT INTO species (name) VALUES ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

UPDATE animals SET species_id = 1;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';

UPDATE animals SET owner_id = 2 WHERE name  IN ('Pikachu','Gabumon');

UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon','Plantmon');

UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander','Squirtle','Blossom');

UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon','Boarmon');

UPDATE owners SET full_name = 'Melody Pond' WHERE id = 4;

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '04-23-2000');

INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '01-17-2019');

INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '05-17-1981');