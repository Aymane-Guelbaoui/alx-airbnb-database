-- Query 1: Total number of bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id;

-- Query 2: Rank properties based on total bookings using ROW_NUMBER
SELECT
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT
        property_id,
        COUNT(*) AS total_bookings
    FROM
        bookings
    GROUP BY
        property_id
) AS property_counts;
