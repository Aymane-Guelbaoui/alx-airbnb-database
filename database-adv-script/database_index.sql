-- Indexes on commonly used columns for optimization

-- Index on user_id in bookings (commonly joined)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings (frequent in joins/filters)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on property_id in reviews
CREATE INDEX idx_reviews_property_id ON reviews(property_id);


-- Measure performance before indexing
EXPLAIN ANALYZE
SELECT u.username, b.booking_date
FROM users u
JOIN bookings b ON u.user_id = b.user_id
WHERE b.booking_date >= '2024-01-01';

-- Create indexes on high usage columns
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Measure performance after indexing
EXPLAIN ANALYZE
SELECT u.username, b.booking_date
FROM users u
JOIN bookings b ON u.user_id = b.user_id
WHERE b.booking_date >= '2024-01-01';

