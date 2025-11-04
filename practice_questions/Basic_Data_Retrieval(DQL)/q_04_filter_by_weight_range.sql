-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Data Retrieval
-- Secondary Concepts: Range Filtering (BETWEEN), WHERE Clause
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the first name and last name for patients whose weight 
-- falls within the range of 100 to 120 (inclusive).
-- ======================

-- Your SQL solution starts here (using the 'BETWEEN' operator):
select first_name, last_name 
from patients 
where  weight>=100 and weight<=120;