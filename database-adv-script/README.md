# ALX Airbnb Database Module - Advanced SQL Tasks

This document contains explanations and summaries for Tasks 0 to 2 of the Airbnb database optimization module. These tasks focus on SQL joins, subqueries, aggregations, and window functions.

---

## ✅ Task 0: Write Complex Queries with Joins

### Objective
Master SQL joins by writing queries that combine data from multiple tables using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

### Queries Summary

1. **INNER JOIN**  
   Retrieves all bookings and the users who made those bookings. Matches records from both `bookings` and `users` where `user_id` is common.

2. **LEFT JOIN**  
   Retrieves all properties and their reviews, including properties that have no reviews. Ensures all `properties` are shown even if no matching `reviews` exist.  
   `ORDER BY` is used to sort by `property_id` for clarity and to satisfy test requirements.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, including:
   - users with no bookings  
   - bookings not linked to any user  

---

## ✅ Task 1: Practice Subqueries

### Objective
Write both correlated and non-correlated subqueries for data retrieval and analysis.

### Queries Summary

1. **Non-correlated Subquery**  
   Retrieves all properties where the **average rating** (from the `reviews` table) is **greater than 4.0**. This is achieved using `GROUP BY` and `HAVING` in the subquery.

2. **Correlated Subquery**  
   Retrieves users who have made **more than 3 bookings**. The subquery uses the outer query’s `user_id` to count matching rows in the `bookings` table.

---

## ✅ Task 2: Apply Aggregations and Window Functions

### Objective
Use SQL aggregation and window functions to analyze data across rows.

### Queries Summary

1. **Aggregation with GROUP BY**  
   Counts the total number of bookings each user has made using `COUNT(*)` and `GROUP BY user_id`.

2. **ROW_NUMBER() Window Function**  
   Ranks properties by number of bookings in descending order. Each property receives a unique position regardless of ties.

3. **RANK() Window Function**  
   Also ranks properties by total bookings, but **preserves ties** — properties with the same number of bookings get the same rank, and the next rank is skipped accordingly.

---

## File Structure

```text
database-adv-script/
│
├── joins_queries.sql                # Task 0 queries
├── subqueries.sql                  # Task 1 queries
├── aggregations_and_window_functions.sql   # Task 2 queries
├── README.md                       # This file
