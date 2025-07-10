# Index Performance Analysis

## Objective
To improve the performance of frequently used queries by creating indexes on high-usage columns and analyzing their impact using `EXPLAIN ANALYZE`.

---

## Step 1: Baseline Performance (Before Indexing)

We ran the following query to join `users` and `bookings` and filter bookings by date:

```sql
EXPLAIN ANALYZE
SELECT
    u.username,
    b.booking_date
FROM
    users u
JOIN bookings b ON u.user_id = b.user_id
WHERE
    b.booking_date >= '2024-01-01';
