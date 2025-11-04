-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Joins
-- Secondary Concepts: INNER JOIN, Column Selection
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the first name, last name, and the full, descriptive name of 
-- the patient's province by joining the patients table with a provinces table.
-- ======================

-- Your SQL solution starts here (assuming 'patients' has a province_id column 
-- and a 'provinces' table has a short_code and province_name column):
SELECT
    p.first_name,
    p.last_name,
    pr.province_name 
FROM
    patients AS p
INNER JOIN
    province_names AS pr
    ON p.province_id = pr.province_id and pr.province_id = 'ON';