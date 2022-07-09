/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT * from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * from animals WHERE neutered IS TRUE and escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT * FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN '10.4' AND '17.3';

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT species from animals;
ROLLBACK;
SELECT species from animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT species from animals;
COMMIT;
SELECT species from animals;

BEGIN;
DELETE FROM animals;
SELECT COUNT(*) FROM ANIMALS;
ROLLBACK;
SELECT COUNT(*) FROM ANIMALS;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '01/01/2022';
SAVEPOINT savepoint_1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO savepoint_1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(name) FROM animals;
SELECT COUNT(name) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;

SELECT SUM(escape_attempts) FROM animals WHERE neutered = true;
SELECT SUM(escape_attempts) FROM animals WHERE neutered = false;

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'; 

SELECT animals.name, owners.full_name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE full_name='Melody';

SELECT animals.name AS animal_name, species.name AS species_type FROM animals JOIN species ON animals.species_id=species.id WHERE species.name='Pokemon';

SELECT full_name, animals.name FROM owners LEFT JOIN animals ON animals.owner_id = owners.id;

SELECT count(animals) FROM animals JOIN species ON animals.species_id = species.id;

SELECT animals.name FROM animals JOIN owners ON animals.owner_id=owners.id WHERE owners.full_name = 'Jennifer Orwell';

SELECT species.name, count(animals) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;

SELECT owners.full_name , COUNT(animals.name) AS total_animals FROM owners JOIN animals ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY total_animals DESC LIMIT 1; 

SELECT owners.full_name , COUNT(animals.name) AS total_animals FROM owners JOIN animals ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY total_animals DESC LIMIT 1;

SELECT a.name FROM animals AS a INNER JOIN visits AS j ON j.animals_id = a.id INNER JOIN vets AS v ON j.vets_id = v.id WHERE j.vets_id =1 AND j.date_of_visit = (SELECT MAX(date_of_visit) FROM visits WHERE vets_id = 1);

SELECT COUNT(j.animals_id) FROM visits AS j LEFT JOIN vets AS v ON v.id = j.vets_id WHERE v.id = 3;

SELECT v.name, s.name FROM vets AS v FULL JOIN specialization AS j ON j.vets_id = v.id FULL JOIN species AS s ON s.id = j.species_id;

SELECT a.name FROM animals AS a INNER JOIN visits AS j On j.animals_id = a.id INNER JOIN vets AS v ON v.id = j.vets_id WHERE j.vets_id = 3 AND j.date_of_visit BETWEEN '04-01-2020' AND '08-30-2020';

SELECT COUNT(j.animals_id) AS number_of_visits, a.name FROM visits AS j FULL JOIN animals AS a ON a.id = j.animals_id GROUP BY a.name;

SELECT a.name, a.id FROM animals AS a INNER JOIN visits AS j ON j.animals_id = a.id INNER JOIN vets AS v ON j.vets_id = v.id WHERE j.vets_id =2 AND j.date_of_visit = (SELECT MIN(date_of_visit) FROM visits WHERE vets_id = 2);

SELECT a.name AS animal_name, a.date_of_birth AS pet_dob, a.escape_attempts AS escapeAttempts, a.weight_kg AS weight, a.neutered AS neutered, v.name AS vet_name, v.age AS vet_age, v.date_of_graduation AS vets_graduation_date, j.date_of_visit AS vet_visit_date FROM visits AS j FULL JOIN animals AS a ON a.id = j.animals_id FULL JOIN vets AS v ON v.id = j.vets_id ORDER BY vet_visit_date DESC;

SELECT COUNT(j.animals_id) FROM visits AS j INNER JOIN vets AS v ON v.id = j.vets_id WHERE v.id NOT IN (SELECT vets_id FROM specialization);

SELECT COUNT(a.species_id) AS sv, s.name FROM animals AS a JOIN species AS s ON s.id = a.species_id INNER JOIN visits AS j ON j.animals_id = a.id INNER JOIN vets AS v ON v.id = j.vets_id WHERE v.id = 3 GROUP BY s.name ORDER by sv DESC LIMIT 1;