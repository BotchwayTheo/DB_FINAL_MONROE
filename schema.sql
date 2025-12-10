-- schema.sql

-- Drop existing tables if they exist
DROP TABLE IF EXISTS REVIEW;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS VENDOR;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS PRODUCT_REVIEWER;

-- Create VENDOR table
CREATE TABLE VENDOR (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create CATEGORY table
CREATE TABLE CATEGORY (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create PRODUCT table
CREATE TABLE PRODUCT (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    vendor_id INT,
    category_id INT,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vendor_id) REFERENCES VENDOR(vendor_id) ON DELETE SET NULL,
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id) ON DELETE SET NULL
);

-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15),
    date_of_birth DATE,
    state VARCHAR(2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create REVIEW table
CREATE TABLE REVIEW (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    moderation_status ENUM('pending', 'approved', 'rejected') DEFAULT 'pending',
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES CUSTOMER(user_id) ON DELETE CASCADE
);

-- Create PRODUCT_REVIEWER table (optional, if needed for tracking)
CREATE TABLE PRODUCT_REVIEWER (
    reviewer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES CUSTOMER(user_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE
);


Explanation of the Schema
VENDOR Table: Stores information about vendors, including their contact details.

vendor_id: Unique identifier for each vendor.
vendor_name: Name of the vendor.
contact_email: Unique email address for the vendor.
phone_number: Optional contact number.
created_at: Timestamp for when the vendor was created.
CATEGORY Table: Contains product categories.

category_id: Unique identifier for each category.
category_name: Name of the category.
PRODUCT Table: Holds information about products.

product_id: Unique identifier for each product.
product_name: Name of the product.
vendor_id: Foreign key referencing the vendor.
category_id: Foreign key referencing the category.
price: Price of the product.
CUSTOMER Table: Contains customer information.

customer_id: Unique identifier for each customer.
user_id: Unique user identifier (could be linked to an authentication system).
address, phone_number, date_of_birth, state: Customer details.
REVIEW Table: Stores reviews for products.

review_id: Unique identifier for each review.
product_id: Foreign key referencing the product being reviewed.
user_id: Foreign key referencing the customer who wrote the review.
rating: Rating given by the customer (1 to 5).
review_text: Text of the review.
review_date: Date the review was created.
moderation_status: Status of the review (pending, approved, rejected).
PRODUCT_REVIEWER Table: (Optional) This table can track which customers have reviewed which products, if needed.


