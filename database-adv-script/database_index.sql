-- Measure performance before and after creating index on user_id in bookings
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

CREATE INDEX idx_bookings_user_id ON bookings(user_id);

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

-- Measure performance before and after creating index on property_id in bookings
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 456;

CREATE INDEX idx_bookings_property_id ON bookings(property_id);

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 456;

-- Measure performance before and after creating index on start_date in bookings
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date = '2024-01-01';

CREATE INDEX idx_bookings_start_date ON bookings(start_date);

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date = '2024-01-01';

-- Measure performance before and after creating index on users email
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'user@example.com';

CREATE INDEX idx_users_email ON users(email);

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'user@example.com';

-- Measure performance before and after creating index on properties location
EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'New York';

CREATE INDEX idx_properties_location ON properties(location);

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'New York';
