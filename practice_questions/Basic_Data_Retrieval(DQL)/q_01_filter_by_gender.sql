-- == PROBLEM METADATA ==
-- Source: sqlpractice.com
-- Topic: Data Retrieval
-- Secondary Concepts: Filtering (WHERE)
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the first name, last name, and gender for patients 
-- whose gender is specifically 'M'.
-- ======================

-- Your SQL solution starts here :

SELECT first_name, last_name, gender 
from patients
where gender = 'M';