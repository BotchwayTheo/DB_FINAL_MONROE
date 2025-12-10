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

