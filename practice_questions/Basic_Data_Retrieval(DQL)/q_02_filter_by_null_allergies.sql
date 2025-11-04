-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Data Retrieval
-- Secondary Concepts: Filtering (WHERE), IS NULL
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the first name and last name for patients 
-- who have no listed allergies (where the allergy column is NULL).
-- ======================
select first_name, last_name
from patients
where allergies is NULL;