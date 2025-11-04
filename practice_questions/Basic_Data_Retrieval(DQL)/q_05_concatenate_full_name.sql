-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Data Retrieval
-- Secondary Concepts: CONCATENATION (CONCAT/||/+), Column Aliasing (AS)
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Retrieve the patients' first name and last name combined into a single column 
-- labeled as 'Full_Name'.
-- ======================

-- Your SQL solution starts here (using CONCAT() for MySQL/SQL Server or || for PostgreSQL/SQLite):

SELECT concat(first_name," ",last_name) AS full_name from patients;