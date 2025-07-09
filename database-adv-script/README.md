# ALX Airbnb Database Module - Task 0: Write Complex Queries with Joins

## Objective
This task focuses on mastering SQL joins by writing queries that combine data from multiple tables using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

## Queries Explanation

1. **INNER JOIN Query**  
   Retrieves all bookings and the users who made those bookings by matching `bookings.user_id` with `users.user_id`. Only bookings that have a matching user are included.

2. **LEFT JOIN Query**  
   Retrieves all properties and their reviews. This includes properties even if they have no reviews, thanks to the LEFT JOIN which keeps all properties and matches reviews where available.

3. **FULL OUTER JOIN Query**  
   Retrieves all users and all bookings, including users with no bookings and bookings that are not linked to any user. This is done with a FULL OUTER JOIN which combines all rows from both tables.

## File Location

- SQL queries are saved in `database-adv-script/joins_queries.sql`.
- This README file is located in the root directory for reference.

---

