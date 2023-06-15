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