# Database Schema Definition for Airbnb Clone

This directory contains the SQL schema definition script `schema.sql` that creates all necessary tables for the Airbnb Clone database project.

## Description

- Defines tables: User, Property, Booking, Payment, Review, and Message
- Sets up primary keys, foreign keys, and constraints
- Adds indexes on frequently queried columns for performance

## How to Use

Run the `schema.sql` script on your SQL database (e.g., MySQL, MariaDB) to create the schema:

```bash
mysql -u username -p < schema.sql
