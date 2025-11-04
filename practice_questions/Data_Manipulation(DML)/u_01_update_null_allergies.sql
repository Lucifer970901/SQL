-- == PROBLEM METADATA ==
-- Source: sqlpractice.com (Easy Category)
-- Topic: Data Manipulation Language (DML)
-- Secondary Concepts: UPDATE, SET, IS NULL
-- Difficulty: Easy
--
-- DESCRIPTION:
-- Update the 'allergies' column in the patients table, replacing 
-- any existing NULL values with the string 'NKA' (No Known Allergies).
-- ======================

-- Your SQL solution starts here (using the 'UPDATE' statement):
-- NOTE: If you receive Error 1175 (Safe Mode), run: SET SQL_SAFE_UPDATES = 0;

UPDATE patients
SET allergies = 'NKA'
WHERE allergies IS NULL;