# Index Performance Analysis

## Indexed Columns
- `users.email` (frequently used in WHERE and JOIN clauses)
- `bookings.user_id` and `bookings.property_id` (used in JOINs)
- `properties.location` (used in WHERE and ORDER BY)

## CREATE INDEX Commands
```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);
