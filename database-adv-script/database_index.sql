-- Create index on user_id in bookings (frequently used in joins)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id in bookings (used in joins and filters)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on start_date in bookings (useful for filtering by date)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Create index on user email (common in WHERE clauses)
CREATE INDEX idx_users_email ON users(email);

-- Create index on property location (for location-based searches)
CREATE INDEX idx_properties_location ON properties(location);
