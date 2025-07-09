# ALX Airbnb Database Module - Task 1: Practice Subqueries

## Objective
This task focuses on writing both correlated and non-correlated subqueries for data retrieval.

## Queries Explanation

1. **Non-correlated Subquery**  
   Retrieves all properties where the average rating (calculated from the `reviews` table) is greater than 4.0. The subquery calculates average ratings per property and filters accordingly.

2. **Correlated Subquery**  
   Finds users who have made more than 3 bookings. The subquery counts bookings for each user by correlating with the outer query using the user's `user_id`.

## File Location

- SQL queries are saved in `database-adv-script/subqueries.sql`.
- This README file is located in the root directory for reference.

---
