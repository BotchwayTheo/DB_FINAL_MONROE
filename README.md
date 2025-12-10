# DB_FINAL_MONROE.

# Product Review & Rating Platform

## **Project Overview**
The **Product Review & Rating Platform** is a web-based application designed to facilitate the collection and management of product reviews and ratings from customers. Similar to popular websites like Amazon or Yelp, this platform allows users to browse products, read customer reviews, and contribute their own feedback. The system aims to enhance the shopping experience by providing insights into product quality and customer satisfaction. This platform also serves as a powerful tool for administrators, allowing them to analyze customer feedback and product performance. 

By leveraging data science analytics, the system provides insights into customer behavior, product quality, and overall satisfaction. Administrators can utilize various analytical queries to monitor trends, identify high-performing products, and understand customer engagement. This capability is akin to the analytics tools used by platforms like Amazon or Yelp, enabling businesses to make informed decisions based on real-time data.

## **Technologies Used**
- **Database**: MySQL 
- **Programming Language**: SQL
- **Development Tools**: Mariadb SQL-compatible database management tool together with PhpMyAdmin for Databse Visualization


## **Setup Instructions**
To set up the database:
1. Run the `sql/schema.sql` file to create the necessary tables.
2. Execute the `sql/sample_data.sql` file to populate the tables with sample data.
3. Use the `sql/reset.sql` file if you need to clear the database and start over.


## **Required SQL Files**
### **1. sql/schema.sql**
This file contains the Data Definition Language (DDL) statements necessary to create the database tables. It includes definitions for primary keys (PKs), foreign keys (FKs), and various constraints to maintain data integrity.

### **2. sql/sample_data.sql**
This file is populated with INSERT statements that provide representative data for the tables. It allows for quick setup of the database with sample entries for testing and demonstration purposes.

### **3. sql/reset.sql**
This file includes DROP and TRUNCATE statements to reset the database. It is useful for clearing out data and starting fresh, especially during the development and testing phases.

### **4. sql/DS_QUERIES.sql**
This file contains a collection of analytical queries designed to extract insights from the database. It includes views for:
- Average rating per product
- Customers with multiple reviews
- High-rated products
- Most active reviewers
- Product average ratings
- Product review counts
- Products with no reviews
- Review counts by category
- Review trends over time
- Total revenue from reviews
- Total reviews per product

These queries provide valuable insights into customer behavior, product performance, and overall platform engagement.

## **Database Design**
The database is structured to support various entities, including vendors, products, reviews, and customers. Each entity is linked through relationships that ensure data consistency and integrity. For detailed information, please refer to the `DATABASE_DESIGN.md` file in the `docs` directory.

## **User Guide**
For instructions on how to use the platform, including how to add products, write reviews, and manage accounts, please refer to the `USER_GUIDE.md` file in the `docs` directory.

## **Contributing**
Contributions to the project are welcome! Please feel free to submit issues or pull requests.

## **License**
This project is licensed under the MIT License - see the LICENSE file for details.

