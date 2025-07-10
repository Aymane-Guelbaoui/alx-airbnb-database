# Task 4: Query Optimization Report

## Objective
Refactor a complex query to improve performance by analyzing execution plans and applying indexing and simplification.

---

## Initial Query (See `perfomance.sql`)
The query retrieves all bookings along with:
- user info
- property info
- payment info

It performs 3 joins across large tables without filters or index hints.

---

## Performance Analysis (Before Optimization)
Using `EXPLAIN ANALYZE`, we observed:
- Full table scans on `users`, `properties`, and `payments`
- No index usage
- High execution cost and row scan count

---

## Optimizations Applied

### 1. Indexing
Created indexes on join keys:
```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
