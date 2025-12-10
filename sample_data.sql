-- sample_data.sql

-- Insert data into VENDOR table
INSERT INTO VENDOR (vendor_id, vendor_name) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Google');

-- Insert data into CATEGORY table
INSERT INTO CATEGORY (category_id, category_name) VALUES
(1, 'Smartphone'),
(2, 'Tablets'),
(3, 'Electronic Accessories');

-- Insert data into PRODUCT table
INSERT INTO PRODUCT (product_id, product_name, category_id, vendor_id) VALUES
(1, 'iPhone 14 Pro Max', 1, 1),
(2, 'iPhone 13', 1, 1),
(3, 'iPhone SE', 1, 1),
(4, 'Galaxy S23', 1, 2),
(5, 'Galaxy S22', 1, 2),
(6, 'Galaxy A53', 1, 2),
(7, 'Pixel 7', 1, 3),
(8, 'Pixel 6', 1, 3),
(9, 'Pixel 5', 1, 3),
(10, 'iPad Pro', 2, 1),
(11, 'iPad Air', 2, 1),
(12, 'iPad Mini', 2, 1),
(13, 'Galaxy Tab S8', 2, 2),
(14, 'Galaxy Tab A8', 2, 2),
(15, 'Pixel Tablet', 2, 3),
(16, 'Nexus 9', 2, 3),
(17, 'Pixel Slate', 2, 3),
(18, 'Apple Watch Series 8', 3, 1),
(19, 'AirPods Pro', 3, 1),
(20, 'AirPods Max', 3, 1),
(21, 'Galaxy Watch 5', 3, 2),
(22, 'Galaxy Buds 2', 3, 2),
(23, 'Pixel Buds Pro', 3, 3),
(24, 'Fitbit Versa 3', 3, 3);

-- Insert data into PRODUCT_REVIEWER table
INSERT INTO PRODUCT_REVIEWER (user_id, user_name, email, reviewer_type) VALUES
(1, 'User_1', 'user1@example.com', 'CUSTOMER'),
(2, 'User_2', 'user2@example.com', 'CUSTOMER'),
(3, 'User_3', 'user3@example.com', 'CUSTOMER'),
(4, 'User_4', 'user4@example.com', 'CUSTOMER'),
(5, 'User_5', 'user5@example.com', 'CUSTOMER'),
(6, 'User_6', 'user6@example.com', 'CUSTOMER'),
(7, 'User_7', 'user7@example.com', 'CUSTOMER'),
(8, 'User_8', 'user8@example.com', 'CUSTOMER'),
(9, 'User_9', 'user9@example.com', 'CUSTOMER'),
(10, 'Admin_1', 'admin1@example.com', 'ADMIN');

-- Insert data into ADMIN table
INSERT INTO ADMIN (user_id, admin_level) VALUES
(10, 'Super Admin');

-- Insert data into REVIEW table
INSERT INTO REVIEW (review_id, product_id, user_id, rating, review_text, helpful_votes, total_votes, review_date, verified_purchase, moderation_status, admin_response, response_date) VALUES
(1, 1, 1, 5, 'Absolutely love this phone! Camera is amazing and battery lasts all day.', 25, 30, '2023-01-01', TRUE, 'approved', NULL, NULL),
(2, 2, 2, 4, 'Great phone overall, but the fingerprint sensor could be better.', 18, 25, '2023-01-02', TRUE, 'approved', NULL, NULL),
(3, 3, 3, 3, 'Decent phone for the price, but the software has some bugs.', 12, 20, '2023-01-03', FALSE, 'approved', NULL, NULL),
(4, 4, 4, 5, 'Best tablet ever! The screen is stunning and very responsive.', 30, 35, '2023-01-04', TRUE, 'approved', NULL, NULL),
(5, 5, 5, 2, 'Very disappointed. Phone stopped working after 2 weeks.', 5, 10, '2023-01-05', TRUE, 'approved', NULL, NULL),
(6, 6, 6, 4, 'Good value for money. Camera quality is impressive.', 20, 25, '2023-01-06', FALSE, 'approved', NULL, NULL),
(7, 7, 7, 5, 'Perfect in every way! Would definitely recommend to friends.', 35, 40, '2023-01-07', TRUE, 'approved', NULL, NULL),
(8, 8, 8, 1, 'Worst phone I have ever owned. Constant freezing issues.', 2, 5, '2023-01-08', TRUE, 'approved', NULL, NULL),
(9, 9, 9, 3, 'Average phone. Nothing special, but gets the job done.', 8, 15, '2023-01-09', FALSE, 'approved', NULL, NULL),
(10, 10, 10, 4, 'Very good tablet. The display quality is exceptional.', 22, 30, '2023-01-10', TRUE, 'approved', NULL, NULL);

-- Insert data into TAG table
INSERT INTO TAG (tag_id, tag_name) VALUES
(1, 'Smartphone'),
(2, 'Tablet'),
(3, 'Electronic Accessories');

-- Insert data into PRODUCT_TAG junction table
INSERT INTO PRODUCT_TAG (product_id, tag_id) VALUES
(1, 1),  -- iPhone 14 Pro Max is tagged as 'Smartphone'
(2, 1),  -- iPhone 13 is tagged as 'Smartphone'
(3, 1),  -- iPhone SE is tagged as 'Smartphone'
(4, 1),  -- Galaxy S23 is tagged as 'Smartphone'
(5, 1),  -- Galaxy S22 is tagged as 'Smartphone'
(6, 1),  -- Galaxy A53 is tagged as 'Smartphone'
(7, 1),  -- Pixel 7 is tagged as 'Smartphone'
(8, 1),  -- Pixel 6 is tagged as 'Smartphone'
(9, 1),  -- Pixel 5 is tagged as 'Smartphone'
(10, 2), -- iPad Pro is tagged as 'Tablet'
(11, 2), -- iPad Air is tagged as 'Tablet'
(12, 2), -- iPad Mini is tagged as 'Tablet'
(13, 2), -- Galaxy Tab S8 is tagged as 'Tablet'
(14, 2), -- Galaxy Tab A8 is tagged as 'Tablet'
(15, 2), -- Pixel Tablet is tagged as 'Tablet'
(16, 2), -- Nexus 9 is tagged as 'Tablet'
(17, 2), -- Pixel Slate is tagged as 'Tablet'
(18, 3), -- Apple Watch Series 8 is tagged as 'Electronic Accessories'
(19, 3), -- AirPods Pro is tagged as 'Electronic Accessories'
(20, 3), -- AirPods Max is tagged as 'Electronic Accessories'
(21, 3), -- Galaxy Watch 5 is tagged as 'Electronic Accessories'
(22, 3), -- Galaxy Buds 2 is tagged as 'Electronic Accessories'
(23, 3), -- Pixel Buds Pro is tagged as 'Electronic Accessories'
(24, 3); -- Fitbit Versa 3 is tagged as 'Electronic Accessories'

-- Insert additional data into PRODUCT_REVIEWER table
INSERT INTO PRODUCT_REVIEWER (user_id, user_name, email, reviewer_type) VALUES
(11, 'User_11', 'user11@example.com', 'CUSTOMER'),
(12, 'User_12', 'user12@example.com', 'CUSTOMER'),
(13, 'User_13', 'user13@example.com', 'CUSTOMER'),
(14, 'User_14', 'user14@example.com', 'CUSTOMER'),
(15, 'User_15', 'user15@example.com', 'CUSTOMER'),
(16, 'User_16', 'user16@example.com', 'CUSTOMER'),
(17, 'User_17', 'user17@example.com', 'CUSTOMER'),
(18, 'User_18', 'user18@example.com', 'CUSTOMER'),
(19, 'User_19', 'user19@example.com', 'CUSTOMER'),
(20, 'User_20', 'user20@example.com', 'CUSTOMER'),
(21, 'User_21', 'user21@example.com', 'CUSTOMER'),
(22, 'User_22', 'user22@example.com', 'CUSTOMER'),
(23, 'User_23', 'user23@example.com', 'CUSTOMER'),
(24, 'User_24', 'user24@example.com', 'CUSTOMER'),
(25, 'User_25', 'user25@example.com', 'CUSTOMER'),
(26, 'User_26', 'user26@example.com', 'CUSTOMER'),
(27, 'User_27', 'user27@example.com', 'CUSTOMER'),
(28, 'User_28', 'user28@example.com', 'CUSTOMER'),
(29, 'User_29', 'user29@example.com', 'CUSTOMER'),
(30, 'User_30', 'user30@example.com', 'CUSTOMER'),
(31, 'User_31', 'user31@example.com', 'CUSTOMER'),
(32, 'User_32', 'user32@example.com', 'CUSTOMER'),
(33, 'User_33', 'user33@example.com', 'CUSTOMER'),
(34, 'User_34', 'user34@example.com', 'CUSTOMER'),
(35, 'User_35', 'user35@example.com', 'CUSTOMER'),
(36, 'User_36', 'user36@example.com', 'CUSTOMER'),
(37, 'User_37', 'user37@example.com', 'CUSTOMER'),
(38, 'User_38', 'user38@example.com', 'CUSTOMER'),
(39, 'User_39', 'user39@example.com', 'CUSTOMER'),
(40, 'User_40', 'user40@example.com', 'CUSTOMER'),
(41, 'User_41', 'user41@example.com', 'CUSTOMER'),
(42, 'User_42', 'user42@example.com', 'CUSTOMER'),
(43, 'User_43', 'user43@example.com', 'CUSTOMER'),
(44, 'User_44', 'user44@example.com', 'CUSTOMER'),
(45, 'User_45', 'user45@example.com', 'CUSTOMER'),
(46, 'User_46', 'user46@example.com', 'CUSTOMER'),
(47, 'User_47', 'user47@example.com', 'CUSTOMER'),
(48, 'User_48', 'user48@example.com', 'CUSTOMER'),
(49, 'User_49', 'user49@example.com', 'CUSTOMER'),
(50, 'User_50', 'user50@example.com', 'CUSTOMER');

-- Insert additional data into REVIEW table
INSERT INTO REVIEW (review_id, product_id, user_id, rating, review_text, helpful_votes, total_votes, review_date, verified_purchase, moderation_status, admin_response, response_date) VALUES
(11, 1, 11, 5, 'Best iPhone ever! The camera quality is top-notch.', 15, 20, '2023-01-11', TRUE, 'approved', NULL, NULL),
(12, 2, 12, 4, 'Great phone but battery life could be better.', 10, 15, '2023-01-12', TRUE, 'approved', NULL, NULL),
(13, 3, 13, 3, 'Good but not as good as I expected.', 5, 8, '2023-01-13', FALSE, 'approved', NULL, NULL),
(14, 4, 14, 5, 'Absolutely love the Galaxy S23!', 20, 25, '2023-01-14', TRUE, 'approved', NULL, NULL),
(15, 5, 15, 2, 'Had issues with the fingerprint sensor.', 3, 5, '2023-01-15', TRUE, 'approved', NULL, NULL),
(16, 6, 16, 4, 'Decent phone for the price.', 12, 18, '2023-01-16', FALSE, 'approved', NULL, NULL),
(17, 7, 17, 5, 'Pixel 7 is fantastic! Highly recommend.', 25, 30, '2023-01-17', TRUE, 'approved', NULL, NULL),
(18, 8, 18, 4, 'Good camera but software needs improvement.', 8, 12, '2023-01-18', TRUE, 'approved', NULL, NULL),
(19, 9, 19, 3, 'Average experience with this phone.', 4, 7, '2023-01-19', FALSE, 'approved', NULL, NULL),
(20, 10, 20, 5, 'iPad Pro is the best tablet on the market!', 30, 35, '2023-01-20', TRUE, 'approved', NULL, NULL),
(21, 11, 21, 4, 'iPad Air is lightweight and efficient.', 15, 20, '2023-01-21', TRUE, 'approved', NULL, NULL),
(22, 12, 22, 5, 'iPad Mini is perfect for reading and browsing.', 20, 25, '2023-01-22', TRUE, 'approved', NULL, NULL),
(23, 13, 23, 5, 'Galaxy Tab S8 is amazing for streaming!', 22, 28, '2023-01-23', TRUE, 'approved', NULL, NULL),
(24, 14, 24, 4, 'Galaxy Tab A8 is great for kids.', 10, 15, '2023-01-24', TRUE, 'approved', NULL, NULL),
(25, 15, 25, 5, 'Pixel Tablet has a great display.', 18, 22, '2023-01-25', TRUE, 'approved', NULL, NULL),
(26, 16, 26, 4, 'Nexus 9 is still a solid choice.', 12, 16, '2023-01-26', TRUE, 'approved', NULL, NULL),
(27, 17, 27, 3, 'Pixel Slate is okay but could be better.', 7, 10, '2023-01-27', FALSE, 'approved', NULL, NULL),
(28, 18, 28, 5, 'Apple Watch Series 8 is a must-have!', 25, 30, '2023-01-28', TRUE, 'approved', NULL, NULL),
(29, 19, 29, 4, 'AirPods Pro sound great!', 15, 20, '2023-01-29', TRUE, 'approved', NULL, NULL),
(30, 20, 30, 5, 'AirPods Max are worth every penny.', 30, 35, '2023-01-30', TRUE, 'approved', NULL, NULL),
(31, 21, 31, 4, 'Galaxy Watch 5 has nice features.', 10, 15, '2023-01-31', TRUE, 'approved', NULL, NULL),
(32, 22, 32, 5, 'Galaxy Buds 2 fit perfectly and sound great!', 20, 25, '2023-02-01', TRUE, 'approved', NULL, NULL),
(33, 23, 33, 4, 'Pixel Buds Pro are decent but pricey.', 12, 18, '2023-02-02', TRUE, 'approved', NULL, NULL),
(34, 24, 34, 5, 'Fitbit Versa 3 is excellent for tracking.', 22, 28, '2023-02-03', TRUE, 'approved', NULL, NULL),
(35, 1, 35, 5, 'iPhone 14 Pro Max is the best phone!', 28, 33, '2023-02-04', TRUE, 'approved', NULL, NULL),
(36, 2, 36, 4, 'iPhone 13 has a great camera.', 18, 23, '2023-02-05', TRUE, 'approved', NULL, NULL),
(37, 3, 37, 4, 'iPhone SE is a budget-friendly option.', 14, 19, '2023-02-06', TRUE, 'approved', NULL, NULL),
(38, 4, 38, 5, 'Galaxy S23 is fast and reliable.', 20, 25, '2023-02-07', TRUE, 'approved', NULL, NULL),
(39, 5, 39, 3, 'Galaxy S22 has a nice design.', 10, 15, '2023-02-08', TRUE, 'approved', NULL, NULL),
(40, 6, 40, 5, 'Galaxy A53 is a great mid-range phone.', 22, 27, '2023-02-09', TRUE, 'approved', NULL, NULL),
(41, 7, 41, 5, 'Pixel 7 is a game changer!', 30, 35, '2023-02-10', TRUE, 'approved', NULL, NULL),
(42, 8, 42, 4, 'Pixel 6 is good, but I prefer the 7.', 15, 20, '2023-02-11', TRUE, 'approved', NULL, NULL),
(43, 9, 43, 2, 'Pixel 5 is outdated now.', 5, 8, '2023-02-12', FALSE, 'approved', NULL, NULL),
(44, 10, 44, 5, 'iPad Pro is a powerhouse!', 28, 33, '2023-02-13', TRUE, 'approved', NULL, NULL),
(45, 11, 45, 4, 'iPad Air is lightweight and portable.', 12, 16, '2023-02-14', TRUE, 'approved', NULL, NULL),
(46, 12, 46, 5, 'iPad Mini is great for travel.', 20, 25, '2023-02-15', TRUE, 'approved', NULL, NULL),
(47, 13, 47, 4, 'Galaxy Tab S8 is great for streaming.', 15, 20, '2023-02-16', TRUE, 'approved', NULL, NULL),
(48, 14, 48, 5, 'Galaxy Tab A8 is good for kids.', 22, 28, '2023-02-17', TRUE, 'approved', NULL, NULL),
(49, 15, 49, 4, 'Pixel Tablet is a solid choice.', 18, 23, '2023-02-18', TRUE, 'approved', NULL, NULL),
(50, 16, 50, 5, 'Nexus 9 is still relevant.', 10, 15, '2023-02-19', TRUE, 'approved', NULL, NULL),
(51, 17, 11, 3, 'Pixel Slate is okay.', 7, 10, '2023-02-20', FALSE, 'approved', NULL, NULL),
(52, 18, 12, 5, 'Apple Watch Series 8 is fantastic!', 30, 35, '2023-02-21', TRUE, 'approved', NULL, NULL),
(53, 19, 13, 4, 'AirPods Pro are a must-have.', 15, 20, '2023-02-22', TRUE, 'approved', NULL, NULL),
(54, 20, 14, 5, 'AirPods Max are incredible!', 28, 33, '2023-02-23', TRUE, 'approved', NULL, NULL),
(55, 21, 15, 4, 'Galaxy Watch 5 is useful.', 12, 16, '2023-02-24', TRUE, 'approved', NULL, NULL),
(56, 22, 16, 5, 'Galaxy Buds 2 fit well.', 20, 25, '2023-02-25', TRUE, 'approved', NULL, NULL),
(57, 23, 17, 4, 'Pixel Buds Pro are decent.', 10, 15, '2023-02-26', TRUE, 'approved', NULL, NULL),
(58, 24, 18, 5, 'Fitbit Versa 3 is great for tracking.', 22, 28, '2023-02-27', TRUE, 'approved', NULL, NULL),
(59, 1, 19, 5, 'iPhone 14 Pro Max is the best!', 30, 35, '2023-02-28', TRUE, 'approved', NULL, NULL),
(60, 2, 20, 4, 'iPhone 13 has a great camera.', 18, 23, '2023-03-01', TRUE, 'approved', NULL, NULL),
(61, 3, 21, 4, 'iPhone SE is affordable.', 14, 19, '2023-03-02', TRUE, 'approved', NULL, NULL),
(62, 4, 22, 5, 'Galaxy S23 is fast!', 20, 25, '2023-03-03', TRUE, 'approved', NULL, NULL),
(63, 5, 23, 3, 'Galaxy S22 is okay.', 10, 15, '2023-03-04', TRUE, 'approved', NULL, NULL),
(64, 6, 24, 5, 'Galaxy A53 is great value.', 22, 27, '2023-03-05', TRUE, 'approved', NULL, NULL),
(65, 7, 25, 5, 'Pixel 7 is amazing!', 30, 35, '2023-03-06', TRUE, 'approved', NULL, NULL),
(66, 8, 26, 4, 'Pixel 6 is good.', 15, 20, '2023-03-07', TRUE, 'approved', NULL, NULL),
(67, 9, 27, 2, 'Pixel 5 is outdated.', 5, 8, '2023-03-08', FALSE, 'approved', NULL, NULL),
(68, 10, 28, 5, 'iPad Pro is powerful!', 28, 33, '2023-03-09', TRUE, 'approved', NULL, NULL),
(69, 11, 29, 4, 'iPad Air is lightweight.', 12, 16, '2023-03-10', TRUE, 'approved', NULL, NULL),
(70, 12, 30, 5, 'iPad Mini is great for travel.', 20, 25, '2023-03-11', TRUE, 'approved', NULL, NULL),
(71, 13, 31, 4, 'Galaxy Tab S8 is excellent.', 15, 20, '2023-03-12', TRUE, 'approved', NULL, NULL),
(72, 14, 32, 5, 'Galaxy Tab A8 is good for kids.', 22, 28, '2023-03-13', TRUE, 'approved', NULL, NULL),
(73, 15, 33, 4, 'Pixel Tablet is solid.', 18, 23, '2023-03-14', TRUE, 'approved', NULL, NULL),
(74, 16, 34, 5, 'Nexus 9 is still good.', 10, 15, '2023-03-15', TRUE, 'approved', NULL, NULL),
(75, 17, 35, 3, 'Pixel Slate is okay.', 7, 10, '2023-03-16', FALSE, 'approved', NULL, NULL),
(76, 18, 36, 5, 'Apple Watch Series 8 is fantastic!', 30, 35, '2023-03-17', TRUE, 'approved', NULL, NULL),
(77, 19, 37, 4, 'AirPods Pro are great.', 15, 20, '2023-03-18', TRUE, 'approved', NULL, NULL),
(78, 20, 38, 5, 'AirPods Max are amazing!', 28, 33, '2023-03-19', TRUE, 'approved', NULL, NULL),
(79, 21, 39, 4, 'Galaxy Watch 5 is useful.', 12, 16, '2023-03-20', TRUE, 'approved', NULL, NULL),
(80, 22, 40, 5, 'Galaxy Buds 2 fit well.', 20, 25, '2023-03-21', TRUE, 'approved', NULL, NULL),
(81, 23, 41, 4, 'Pixel Buds Pro are decent.', 10, 15, '2023-03-22', TRUE, 'approved', NULL, NULL),
(82, 24, 42, 5, 'Fitbit Versa 3 is great for tracking.', 22, 28, '2023-03-23', TRUE, 'approved', NULL, NULL),
(83, 1, 43, 5, 'iPhone 14 Pro Max is the best!', 30, 35, '2023-03-24', TRUE, 'approved', NULL, NULL),
(84, 2, 44, 4, 'iPhone 13 has a great camera.', 18, 23, '2023-03-25', TRUE, 'approved', NULL, NULL),
(85, 3, 45, 4, 'iPhone SE is affordable.', 14, 19, '2023-03-26', TRUE, 'approved', NULL, NULL),
(86, 4, 46, 5, 'Galaxy S23 is fast!', 20, 25, '2023-03-27', TRUE, 'approved', NULL, NULL),
(87, 5, 47, 3, 'Galaxy S22 is okay.', 10, 15, '2023-03-28', TRUE, 'approved', NULL, NULL),
(88, 6, 48, 5, 'Galaxy A53 is great value.', 22, 27, '2023-03-29', TRUE, 'approved', NULL, NULL),
(89, 7, 49, 5, 'Pixel 7 is amazing!', 30, 35, '2023-03-30', TRUE, 'approved', NULL, NULL),
(90, 8, 50, 4, 'Pixel 6 is good.', 15, 20, '2023-03-31', TRUE, 'approved', NULL, NULL);
