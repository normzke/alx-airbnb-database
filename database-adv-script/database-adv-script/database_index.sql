-- Create indexes on frequently used columns to speed up WHERE, JOIN, and ORDER BY clauses

-- Index on user email for login or lookup
CREATE INDEX idx_users_email ON users(email);

-- Index on foreign keys in bookings for JOINs
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on property city for filtering and ordering
CREATE INDEX idx_properties_city ON properties(city);
