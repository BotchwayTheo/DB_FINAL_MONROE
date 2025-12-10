-- DS_QUERIES.sql

-- View 1: Average Rating per Product
CREATE VIEW AverageRatingPerProduct AS
SELECT product_id, AVG(rating) AS average_rating
FROM REVIEW
GROUP BY product_id
ORDER BY average_rating DESC;

-- View 2: Customers with Multiple Reviews
CREATE VIEW CustomersWithMultipleReviews AS
SELECT user_id, COUNT(review_id) AS review_count
FROM REVIEW
GROUP BY user_id
HAVING review_count > 1
ORDER BY review_count DESC;

-- View 3: High Rated Products
CREATE VIEW HighRatedProducts AS
SELECT p.product_id, p.product_name, AVG(r.rating) AS average_rating
FROM PRODUCT p
JOIN REVIEW r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
HAVING average_rating > 3.5
ORDER BY average_rating DESC;

-- View 4: Most Active Reviewers
CREATE VIEW MostActiveReviewers AS
SELECT user_id, COUNT(*) AS total_reviews
FROM REVIEW
GROUP BY user_id
ORDER BY total_reviews DESC;

-- View 5: Product Average Ratings
CREATE VIEW ProductAverageRatings AS
SELECT p.product_id, p.product_name, AVG(r.rating) AS average_rating
FROM PRODUCT p
LEFT JOIN REVIEW r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
ORDER BY average_rating DESC;

-- View 6: Product Review Counts
CREATE VIEW ProductReviewCounts AS
SELECT p.product_id, p.product_name, COUNT(r.review_id) AS total_reviews
FROM PRODUCT p
LEFT JOIN REVIEW r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_reviews DESC;

-- View 7: Products with No Reviews
CREATE VIEW ProductsWithNoReviews AS
SELECT p.product_id, p.product_name
FROM PRODUCT p
LEFT JOIN REVIEW r ON p.product_id = r.product_id
WHERE r.review_id IS NULL;

-- View 8: Review Counts by Category
CREATE VIEW ReviewCountsByCategory AS
SELECT c.category_name, COUNT(r.review_id) AS total_reviews
FROM CATEGORY c
LEFT JOIN PRODUCT p ON c.category_id = p.category_id
LEFT JOIN REVIEW r ON p.product_id = r.product_id
GROUP BY c.category_name
ORDER BY total_reviews DESC;

-- View 9: Review Trends Over Time
CREATE VIEW ReviewTrendsOverTime AS
SELECT DATE_FORMAT(review_date, '%Y-%m') AS review_month, COUNT(*) AS total_reviews
FROM REVIEW
GROUP BY review_month
ORDER BY review_month DESC;

-- View 10: Total Revenue from Reviews
CREATE VIEW TotalRevenueFromReviews AS
SELECT r.user_id, SUM(r.rating) AS total_revenue
FROM REVIEW r
JOIN PRODUCT p ON r.product_id = p.product_id
WHERE r.moderation_status = 'approved'
GROUP BY r.user_id
ORDER BY total_revenue DESC;

-- View 11: Total Reviews per Product
CREATE VIEW TotalReviewsPerProduct AS
SELECT product_id, COUNT(*) AS total_reviews
FROM REVIEW
GROUP BY product_id
ORDER BY total_reviews DESC;


Explanation of ds_queries.sql
The DS_QUERIES.sql file contains a series of SQL views designed to extract meaningful insights from the data in the Product Review & Rating Platform. These views facilitate data analysis and reporting.

Average Rating per Product:

Calculates the average rating for each product, providing insight into overall customer satisfaction.
Customers with Multiple Reviews:

Identifies customers who have submitted more than one review, helping to understand customer engagement and loyalty.
High Rated Products:

Lists products with an average rating above a certain threshold (3.5), highlighting top-performing items.
Most Active Reviewers:

Counts the total reviews submitted by each user, identifying the most engaged reviewers on the platform.
Product Average Ratings:

Provides a list of products along with their average ratings, facilitating quick access to product performance metrics.
Product Review Counts:

Counts the total number of reviews for each product, useful for understanding product popularity.
Products with No Reviews:

Identifies products that have not received any reviews, highlighting areas for potential marketing or engagement efforts.
Review Counts by Category:

Aggregates review counts by product category, providing insights into which categories are most actively reviewed.
Review Trends Over Time:

Analyzes the volume of reviews submitted over time, helping to identify trends in customer feedback.
Total Revenue from Reviews:

Calculates the total revenue attributed to each user based on their reviews, providing insights into customer value.
Total Reviews per Product:

Counts the total reviews for each product, giving a quick overview of product engagement.
Summary
The DS_QUERIES.sql file is essential for data analysis and reporting, providing valuable insights into customer behavior, product performance, and overall platform engagement.
