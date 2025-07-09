-- Query 1: INNER JOIN to retrieve all bookings and respective users who made those bookings
SELECT
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.user_id,
    users.username,
    users.email
FROM
    bookings
INNER JOIN
    users ON bookings.user_id = users.user_id;

-- Query 2: LEFT JOIN to retrieve all properties and their reviews, including properties with no reviews
SELECT
    properties.property_id,
    properties.property_name,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM
    properties
LEFT JOIN
    reviews ON properties.property_id = reviews.property_id;

-- Query 3: FULL OUTER JOIN to retrieve all users and all bookings, even if user has no booking or booking not linked to user
SELECT
    users.user_id,
    users.username,
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date
FROM
    users
FULL OUTER JOIN
    bookings ON users.user_id = bookings.user_id;
