/* Database schema to keep the structure of entire database. */

-- Table to store patient information

CREATE TABLE patients(
id int PRIMARY KEY IDENTITY (1,1),
name varchar,
date_of_birth date
);

-- Table to store medical history information

CREATE TABLE medical_histories(
id int PRIMARY KEY IDENTITY (1,1),
admitted_at timestamp,
patient_id int,
FOREIGN KEY (patient_id) REFERENCES patients(id),
status varchar
);

-- Index for faster searching of medical histories by patient id
CREATE INDEX patient_id_medical_histories_index
ON medical_histories (patient_id);

-- Table to store invoice information

CREATE TABLE invoices(
id int PRIMARY KEY IDENTITY (1,1),
total_amount decimal,
generated_at datetime,
payed_at timestamp,
medical_history_id int,
FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

-- Index for faster searching of invoices by medical history id

CREATE INDEX medical_id_invoices_index
ON invoices (medical_history_id);

-- Table to store treatment information
CREATE TABLE treatments(
id int PRIMARY KEY IDENTITY (1,1),
type varchar,
name varchar
);