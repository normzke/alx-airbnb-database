-- Index on user email for quick lookups
CREATE INDEX idx_users_email ON users(email);

-- Index on booking user_id to optimize joins
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on booking property_id to speed up property lookups
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on property city to optimize location-based searches
CREATE INDEX idx_properties_city ON properties(city);
