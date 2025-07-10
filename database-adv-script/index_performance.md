-- BEFORE INDEXING: Analyze query performance
EXPLAIN ANALYZE
SELECT
    u.username,
    b.booking_date
FROM
    users u
JOIN bookings b ON u.user_id = b.user_id
WHERE
    b.booking_date >= '2024-01-01';

-- CREATE INDEX statements
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- AFTER INDEXING: Analyze performance again
EXPLAIN ANALYZE
SELECT
    u.username,
    b.booking_date
FROM
    users u
JOIN bookings b ON u.user_id = b.user_id
WHERE
    b.booking_date >= '2024-01-01';
