-- SQL Coding Challenges Day 1--

CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE Patients(
Patient_ID int,
Patient_Name varchar(50),
Age int,
Gender enum('M','F'),
AdmissionDate date
);
select*from Patients;

ALTER TABLE Patients ADD COLUMN DoctorAssigned varchar(50);
select*from Patients;

ALTER TABLE Patients MODIFY COLUMN Patient_Name varchar(100);
 
 RENAME TABLE Patients to Patient_Info;
 select*from Patient_Info;
 
 TRUNCATE TABLE Patient_Info;
 DROP TABLE Patient_Info;    