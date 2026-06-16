---Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate).---

create database hospital;
use hospital;
create table Patients(
patientID INT,
PatientName varchar(30),
Age int,
Gender enum('Male','Female'),
AdmissionDate date
);