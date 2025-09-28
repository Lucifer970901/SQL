use hospital;
# Show first name, last name, and gender of patients whose gender is 'M'
select first_name ,last_name,gender from patients where gender = 'M';

#Show first name and last name of patients who does not have allergies. (null)
select  first_name,last_name from patients where allergies is not null;

#Show first name of patients that start with the letter 'C'
select first_name from patients where first_name like 'C%';

#Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
select first_name , last_name from patients where weight >=100 and weight <=120;

#Update the patient table for allergies column. If the patient allergies is null replace it with ‘NKA’
set sql_safe_updates = 0;
update patients
set allergies = 'NKA' where allergies  is null;

#Show first name and last name concatenated into one column to show their full name
select concat (first_name,' ',last_name) as full_name from patients;

#Show first name, last name and full province name for each patient
select * from patients;
select * from province_names;
select p.first_name,p.last_name, pr.province_name as province_full_name from patients as p join province_names as pr
on p.province_id = pr.province_id;
#another way to write it
select first_name,last_name,province_name 
from patients join province_names
on patients.province_id = province_names.province_id;

#Show how many patients have birth date as 2010 as birth year
select * from patients where birth_date like '2010%';
#another way
select * from patients where year(birth_date)  = 2010;
#WE NEED TO SHOW THE COUNT
select count(*) from patients where year(birth_date) = 2010;

#Show the first_name, last_name, and height of the patient with the greatest height.
select max(height) from patients;
select first_name,last_name,height as greatest_height from patients where height = (select max(height) from patients);

#Show all columns for patients who have on of the patient ids 1,45,534,879,1000
select * from patients where patient_id in (1,45,534,879,1000);

# show total number of admissions
select * from admissions;
select count(*) from admissions;

#show all the columns from admissions where the patient was admitted and discharged on the same day
select * from admissions where admission_Date = discharge_date;

#show the patient id and the total number of admissions for patients id 579
select * from patients;
select * from admissions;
select patient_id, count(patient_id) as total_admissions from admissions where patient_id = 579;
# if you want to group all the patients and check their admission,
select patient_id,count(*) as total_admissions from admissions group by patient_id;

#write a query to find the first name, last name and birth date of the patients who has height greater than 160 weight greater than 70
select * from patients;
select first_name, last_name, birth_date from patients where height >160 and weight>70;

#write a query to find the list of patients first name, last name allergies where allergies not null and from city hamilton
select first_name, last_name, allergies from patients where allergies is not null and city = 'Hamilton';

#based on the cities that our patient lives in show unique cities that are in province id 'NS'
select * from patients;
select city from patients where province_id in ('NS');

#now let's move to medium questions
#show unique birth years from patients and order them by ascending
select * from patients;
select birth_date from patients;
select distinct year(birth_date) as birth_year from patients order by birth_year asc;

#show unique first names from patients where only occurs once in the list
# example if 2 or more people have same first name do not include them in output list
select distinct first_name from patients; 
select first_name from patients group by first_name  having count(*) = 1 ;

#show patient id, first name from patients where their first name starts and ends with s and is atleast 6 character long
select patient_id, first_name from patients where first_name like ( 's%____%s'); #4 dashes in between
select * from patients;
insert into patients values(11,	'Spiros',	'Riviera',	'M',	'1990-07-10',	'Kingston',	'ON',	'Penicillin',	192,	109);

#show patient id, first name and last name from patients whose diagnosis is Dementia, primary diagnosis is stored in admissions table
select * from patients;
select * from admissions;
select p.patient_id, p.first_name, p.last_name from patients  as p
join admissions as a on p.patient_id = a.patient_id 
where a.diagnosis  = 'Dementia';

#display every patients first name order by lentgh of each patients name and then alphabetically
select first_name from patients;
select first_name from patients order by length(first_name),first_name;

#show the total number of male patients and female patients from patient table  display 2 results in the same row
select first_name, last_name,gender from patients;
select
	(select count(*) as male_count from patients where gender = 'M' ) as male_patients,
	(select count(*) as female_count from patients where gender = 'F') as female_patients;

#show first name, last name and allergies from patients which have allergies either pencilin or morphine show result ordered by ascending by allergies then by first name
# then by last name
select* from patients;
select first_name, last_name, allergies from patients where allergies = 'Penicillin' or allergies =  'Morphine' order by allergies asc,first_name,last_name;

#show patient id, diagnosis from admissions find patients who admited multiple times for the same diagnosis
select patient_id, diagnosis from admissions group by patient_id,diagnosis having count(*)>1;

#Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.
select * from patients;
select city, count(*) as patients_in_city from patients group by city order by patients_in_city desc,city;

