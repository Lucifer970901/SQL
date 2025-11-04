-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Filtering (IN Operator)
-- Secondary Concepts: Basic Data Retrieval (SELECT *), List Matching
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve all columns for a specific, given list of patient IDs. 
-- This task is efficiently solved using the 'IN' operator in the WHERE clause.
-- ======================
SELECT
    * 
FROM
    patients
WHERE
    patient_id IN (1, 45, 534, 879, 1000);