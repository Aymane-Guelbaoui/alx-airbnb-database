# Index Performance Report

## Indexes Created

- `bookings.user_id`  
- `bookings.property_id`  
- `reviews.property_id`  

These columns are frequently used in JOINs and WHERE filters.

## Performance Analysis

Before indexing, the query performed a full scan on bookings with slow execution time. After creating the indexes, the query planner used index scans, resulting in significantly faster query performance and reduced I/O.

## Conclusion

Creating indexes on frequently used columns improved query execution time and resource usage. Using `EXPLAIN ANALYZE` validated these performance improvements.
