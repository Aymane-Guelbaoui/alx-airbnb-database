# Task 6: Database Performance Monitoring and Refinement

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## Tools Used
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- `SHOW PROFILE` (MySQL)

---

## Monitoring Example Queries

1. **Query A: Booking details with user info**

```sql
EXPLAIN ANALYZE
SELECT
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.username
FROM
    bookings b
JOIN users u ON b.user_id = u.user_id
WHERE
    b.booking_date >= '2024-01-01';
