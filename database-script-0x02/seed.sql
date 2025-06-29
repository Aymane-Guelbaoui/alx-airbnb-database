-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
(UUID(), 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '555-0100', 'guest'),
(UUID(), 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '555-0110', 'host'),
(UUID(), 'Carol', 'Williams', 'carol@example.com', 'hashed_pw3', '555-0120', 'admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
(UUID(), (SELECT user_id FROM User WHERE email='bob@example.com'), 'Cozy Cottage', 'A cozy cottage near the beach', 'Miami, FL', 120.00),
(UUID(), (SELECT user_id FROM User WHERE email='bob@example.com'), 'Mountain Cabin', 'Rustic cabin with mountain views', 'Denver, CO', 150.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(UUID(), (SELECT property_id FROM Property WHERE name='Cozy Cottage'), (SELECT user_id FROM User WHERE email='alice@example.com'), '2025-07-01', '2025-07-05', 480.00, 'confirmed'),
(UUID(), (SELECT property_id FROM Property WHERE name='Mountain Cabin'), (SELECT user_id FROM User WHERE email='alice@example.com'), '2025-08-10', '2025-08-15', 750.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
(UUID(), (SELECT booking_id FROM Booking WHERE total_price=480.00), 480.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
(UUID(), (SELECT property_id FROM Property WHERE name='Cozy Cottage'), (SELECT user_id FROM User WHERE email='alice@example.com'), 5, 'Amazing stay, very cozy and clean!');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
(UUID(), (SELECT user_id FROM User WHERE email='alice@example.com'), (SELECT user_id FROM User WHERE email='bob@example.com'), 'Hi Bob, is the Mountain Cabin available next month?');
