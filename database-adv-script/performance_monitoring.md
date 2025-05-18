## Database Performance Monitoring Report

### 1. Query Monitored
We analyzed the following query:

```sql
EXPLAIN ANALYZE
SELECT b.id, u.name, p.name AS property_name, b.start_date, b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE b.start_date >= '2022-01-01' AND b.end_date <= '2022-12-31';

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_end_date ON bookings(start_date, end_date);
