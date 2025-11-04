-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Aggregation (COUNT function)
-- Secondary Concepts: Basic Data Retrieval
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the total count of all records in the 'admissions' table. 
-- This is the simplest application of the COUNT() aggregate function.
-- ======================
SELECT
    COUNT(*) AS total_admissions
FROM
    admissions;
