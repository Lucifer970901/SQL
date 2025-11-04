-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Data Retrieval
-- Secondary Concepts: String Matching (LIKE), Wildcards
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the first name for patients whose name begins with 
-- the capital letter 'C'.
-- ======================

-- Your SQL solution starts here (using the 'LIKE' operator):
select first_name 
from patients 
where first_name like 'C%';