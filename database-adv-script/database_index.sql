-- Indexes on commonly used columns for optimization

-- Index on user_id in bookings (commonly joined)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings (frequent in joins/filters)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on property_id in reviews
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
