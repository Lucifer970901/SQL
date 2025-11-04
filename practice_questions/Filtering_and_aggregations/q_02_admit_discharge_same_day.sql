-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Filtering (Date/Time Comparison)
-- Secondary Concepts: Basic Data Retrieval (SELECT *), Equality Check
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve all columns from the 'admissions' table where the 'admission_date' 
-- and 'discharge_date' columns hold the exact same value, indicating a 
-- same-day admission and discharge.
-- ======================
SELECT
    * -- Selects all columns
FROM
    admissions
WHERE
    admission_date = discharge_date;