# Normalization Steps to 3NF

## 1. First Normal Form (1NF)
- Ensured that all tables have atomic values (no repeating groups or arrays).
- Example: Each user has only one email, one phone number per row.

## 2. Second Normal Form (2NF)
- Removed partial dependencies: all non-key attributes depend on the full primary key.
- For example, in the Bookings table, all details (dates, user_id, property_id) depend fully on booking_id.

## 3. Third Normal Form (3NF)
- Removed transitive dependencies.
- Split location details from Properties into a separate Location table.
- Ensured all non-key fields depend only on the primary key, and not on other non-key fields.

### Summary
The database schema is now normalized to 3NF. This reduces redundancy, improves data integrity, and supports efficient querying and scalability.
