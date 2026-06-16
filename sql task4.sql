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
select * from patients;

--- Write a SQL command to add a new column DoctorAssigned VARCHAR(50) to the Patients table.---
alter table patients
add column DoctorAssigned varchar(50);

--- Write a SQL command to rename the table.---
alter table patients
rename to patient_info;
select * from patient_info;
