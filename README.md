# DB_FINAL_MONROE.


## **Required SQL Files**
### **1. sql/schema.sql**
This file contains the Data Definition Language (DDL) statements necessary to create the database tables. It includes definitions for primary keys (PKs), foreign keys (FKs), and various constraints to maintain data integrity.

### **2. sql/sample_data.sql**
This file is populated with INSERT statements that provide representative data for the tables. It allows for quick setup of the database with sample entries for testing and demonstration purposes.

### **3. sql/reset.sql**
This file includes DROP and TRUNCATE statements to reset the database. It is useful for clearing out data and starting fresh, especially during the development and testing phases.

### **4. sql/DS_QUERIES.sql**
This file contains a collection of analytical queries designed to extract insights from the database. It includes views for:
- Counting customers by state
- Counting reviews by state
- Calculating average ratings by state
- Total reviews per product
- Average ratings per product
- Most active reviewers
- Products with no reviews
- And more

These queries provide valuable insights into customer behavior, product performance, and overall platform engagement.

## **Database Design**
The database is structured to support various entities, including vendors, products, reviews, and customers. Each entity is linked through relationships that ensure data consistency and integrity. For detailed information, please refer to the `DATABASE_DESIGN.md` file in the `docs` directory.

## **Setup Instructions**
To set up the database:
1. Run the `sql/schema.sql` file to create the necessary tables.
2. Execute the `sql/sample_data.sql` file to populate the tables with sample data.
3. Use the `sql/reset.sql` file if you need to clear the database and start over.

For detailed setup instructions, refer to the `SETUP.md` file in the `docs` directory.

## **User Guide**
For instructions on how to use the platform, including how to add products, write reviews, and manage accounts, please refer to the `USER_GUIDE.md` file in the `docs` directory.

## **Contributing**
Contributions to the project are welcome! Please feel free to submit issues or pull requests.

## **License**
This project is licensed under the MIT License - see the LICENSE file for details.
