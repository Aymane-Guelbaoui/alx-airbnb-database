# Database Seed Script for Airbnb Clone

This directory contains the `seed.sql` file, which populates the database with sample data.

## Description

- Inserts multiple users with different roles (guest, host, admin)
- Adds properties owned by hosts
- Creates bookings for guests on properties
- Adds payments linked to bookings
- Adds reviews from guests on properties
- Adds messages between users

## How to Use

Run the `seed.sql` file after the schema has been created:

```bash
mysql -u username -p < seed.sql
