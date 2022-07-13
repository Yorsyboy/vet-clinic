CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE NOT NULL
)

CREATE TABLE medical_histories(
    id SERIAL PRIMARY KEY,
     admitted_at TIMESTAMP NOT NULL,
    patient_id INT NOT NULL,
    status VARCHAR(50),
    CONSTRAINT patients_fk FOREIGN KEY (patient_id) REFERENCES patients(id)
)