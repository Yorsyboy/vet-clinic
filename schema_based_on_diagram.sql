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

CREATE TABLE invoices(
    id SERIAL PRIMARY KEY,
    total_amount DECIMAL NOT NULL,
    generated_at TIMESTAMP NOT NULL,
    payed_at TIMESTAMP NOT NULL,
    medical_history_id INT NOT NULL,
    CONSTRAINT history_fk FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
)