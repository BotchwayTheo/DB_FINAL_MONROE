-- reset.sql

-- Drop existing tables in reverse order of dependency to maintain referential integrity
DROP TABLE IF EXISTS REVIEW;
DROP TABLE IF EXISTS PRODUCT_TAG;
DROP TABLE IF EXISTS TAG;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS ADMIN;
DROP TABLE IF EXISTS PRODUCT_REVIEWER;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS VENDOR;

-- Optionally, this is a message to indicate successful reset
SELECT 'Database has been reset successfully.' AS message;


Explanation of reset.sql
The reset.sql file is designed to clear all existing data from the Product Review & Rating Platform database, allowing for a fresh start. This is particularly useful during development and testing phases.

Drop Tables:

The script drops each table in the correct order to prevent foreign key constraint violations. The REVIEW table is dropped first, as it references both PRODUCT and PRODUCT_REVIEWER, followed by PRODUCT_TAG, TAG, CUSTOMER, ADMIN, PRODUCT_REVIEWER, PRODUCT, CATEGORY, and finally VENDOR.
Optional Confirmation Message:

A simple SELECT statement at the end of the script can be used to confirm the successful reset of the database. This message is optional and can be removed if not needed.
Summary
The reset.sql file provides a straightforward method for clearing the database, enabling developers to quickly set up a clean environment for testing or development. It ensures that any previous data or schema changes do not affect ongoing work.
