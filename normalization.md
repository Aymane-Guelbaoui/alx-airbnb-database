# Database Normalization for Airbnb Clone

## 1. Overview

This document explains the normalization process applied to the Airbnb Clone database schema. The goal was to ensure the database design conforms to the Third Normal Form (3NF) to minimize redundancy and maintain data integrity.

## 2. Initial Schema Review

The initial schema includes the following entities with their attributes:

- **User** (`user_id`, `first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`, `created_at`)
- **Property** (`property_id`, `host_id`, `name`, `description`, `location`, `pricepernight`, `created_at`, `updated_at`)
- **Booking** (`booking_id`, `property_id`, `user_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`)
- **Payment** (`payment_id`, `booking_id`, `amount`, `payment_date`, `payment_method`)
- **Review** (`review_id`, `property_id`, `user_id`, `rating`, `comment`, `created_at`)
- **Message** (`message_id`, `sender_id`, `recipient_id`, `message_body`, `sent_at`)

## 3. Normalization Steps

### First Normal Form (1NF)

- All attributes are atomic and indivisible.
- Each table has a primary key that uniquely identifies each record.
- There are no repeating groups or arrays in any table.

### Second Normal Form (2NF)

- All non-key attributes are fully functionally dependent on the entire primary key.
- Since all tables use single-attribute primary keys (`UUID`), partial dependency is inherently avoided.
- Foreign keys reference primary keys of related tables, ensuring proper relationships.

### Third Normal Form (3NF)

- There are no transitive dependencies; non-key attributes do not depend on other non-key attributes.
- For example:
  - In the **Property** table, `host_id` is a foreign key referencing `User`, avoiding storing host details redundantly.
  - In **Booking**, all attributes relate directly to the booking itself and its foreign keys.
  - **Payment**, **Review**, and **Message** tables do not contain attributes dependent on other non-key attributes.

## 4. Resulting Schema Integrity

- The schema design effectively minimizes redundancy.
- Data modification anomalies are prevented by the clear separation of entities and relationships.
- Referential integrity is enforced through foreign keys linking related records.

## 5. Conclusion

The Airbnb Clone database schema is normalized up to the Third Normal Form (3NF), ensuring efficient data storage and consistent relationships. This design supports scalability, maintainability, and accurate representation of the real-world entities involved in the system.
