-- Assuming PostgreSQL syntax for range partitioning by booking_date

-- Step 1: Create a new partitioned bookings table
CREATE TABLE bookings_partitioned (
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    booking_date DATE NOT NULL,
    -- other columns...
    PRIMARY KEY (booking_id, booking_date)
) PARTITION BY RANGE (booking_date);

-- Step 2: Create partitions for specific date ranges
CREATE TABLE bookings_2022 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- Add more partitions as needed...

-- Note: You would typically migrate existing data into the new partitioned table.
