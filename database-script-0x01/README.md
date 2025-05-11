# ALX Airbnb Database Project

This project defines the schema for an Airbnb-like application using SQL.

## Tables

- **users**: Stores user information (id, name, email, etc.).
- **properties**: Stores information about properties (owned by users).
- **bookings**: Stores booking information for users and properties.
- **payments**: Stores payment details for bookings.

## Setup

1. Clone the repository.
2. Open a MySQL shell and run the SQL commands in `schema.sql` to create the database schema.
3. Use `SELECT` queries to verify that tables are created correctly.

## Database Structure

The database includes tables for users, properties, bookings, and payments. Foreign keys are used to link the tables, ensuring data integrity.

## Indexes

Indexes are created on key fields for performance optimization (e.g., user emails, property locations).
