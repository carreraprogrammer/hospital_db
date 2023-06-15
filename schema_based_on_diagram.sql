/* Database schema to keep the structure of entire database. */

-- Table to store patient information

CREATE TABLE patients(
id int PRIMARY KEY IDENTITY (1,1),
name varchar,
date_of_birth date
);
