 -- schema.sql

-- Create the VENDOR table
CREATE TABLE VENDOR (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(100)
);

-- Create the CATEGORY table
CREATE TABLE CATEGORY (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Create the PRODUCT table
CREATE TABLE PRODUCT (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    vendor_id INT,
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    FOREIGN KEY (vendor_id) REFERENCES VENDOR(vendor_id)
);

-- Create the PRODUCT_REVIEWER table
CREATE TABLE PRODUCT_REVIEWER (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    email VARCHAR(100),
    reviewer_type ENUM('CUSTOMER', 'ADMIN')
);

-- Create the ADMIN table
CREATE TABLE ADMIN (
    user_id INT PRIMARY KEY,
    admin_level VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES PRODUCT_REVIEWER(user_id)
);

-- Create the REVIEW table
CREATE TABLE REVIEW (
    review_id INT PRIMARY KEY,
    product_id INT,
    user_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),  -- Rating should be between 1 and 5
    review_text TEXT,
    helpful_votes INT DEFAULT 0,
    total_votes INT DEFAULT 0,
    review_date DATE,
    verified_purchase BOOLEAN,
    moderation_status ENUM('approved', 'pending', 'rejected'),
    admin_response TEXT,
    response_date DATE,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (user_id) REFERENCES PRODUCT_REVIEWER(user_id)
);

-- Create the TAG table
CREATE TABLE TAG (
    tag_id INT PRIMARY KEY,
    tag_name VARCHAR(100)
);

-- Create the PRODUCT_TAG junction table
CREATE TABLE PRODUCT_TAG (
    product_id INT,
    tag_id INT,
    PRIMARY KEY (product_id, tag_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (tag_id) REFERENCES TAG(tag_id)
);

-- Create the CUSTOMER table
CREATE TABLE CUSTOMER (
    customer_id INT PRIMARY KEY,
    user_id INT,
    address VARCHAR(255),
    phone_number VARCHAR(15),
    date_of_birth DATE,
    FOREIGN KEY (user_id) REFERENCES PRODUCT_REVIEWER(user_id)
);


