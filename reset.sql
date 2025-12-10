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

-- Optionally, you can also add a message to indicate successful reset
SELECT 'Database has been reset successfully.' AS message;

