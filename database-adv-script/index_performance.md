# Index Performance Analysis

## Indexes Implemented

- `bookings.user_id`
- `bookings.property_id`
- `reviews.property_id`

## Performance Measurement

### Before Indexing
Using `EXPLAIN`, the query used full table scans and was slow for large data.

### After Indexing
`EXPLAIN` shows index usage, resulting in reduced query cost and faster execution time.

### Conclusion
Indexes significantly improved read performance on joined and filtered columns.
