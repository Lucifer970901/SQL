-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Filtering (ORDER BY and LIMIT/TOP)
-- Secondary Concepts: Column Selection, Sorting, Limiting
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the first name, last name, and height of a single patient 
-- record that has the highest value in the 'height' column. This requires 
-- sorting in descending order and limiting the result to 1.
-- ======================
SELECT
  first_name,
  last_name,
  height
FROM patients
WHERE height = (
    SELECT max(height)
    FROM patients
  )

-- or use the following query
select 
 first_name,
 last_name,
 height 
 from patients
 order by height desc
 limit 1;
