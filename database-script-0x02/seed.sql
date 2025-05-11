-- Insert Users
INSERT INTO users (id, name, email, password, created_at) VALUES
(1, 'John Doe', 'johndoe@example.com', 'password123', NOW()),
(2, 'Jane Smith', 'janesmith@example.com', 'password456', NOW());

-- Insert Properties
INSERT INTO properties (id, user_id, name, description, price_per_night, location, created_at) VALUES
(1, 1, 'Cozy Apartment', 'A cozy apartment in the city center.', 100, 'New York', NOW()),
(2, 2, 'Beachfront Villa', 'A beautiful beachfront villa with ocean view.', 250, 'Miami', NOW());

-- Insert Bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date, status, created_at) VALUES
(1, 1, 1, '2025-06-01', '2025-06-07', 'confirmed', NOW()),
(2, 2, 2, '2025-07-10', '2025-07-15', 'pending', NOW());

-- Insert Payments
INSERT INTO payments (id, booking_id, amount, payment_method, status, created_at) VALUES
(1, 1, 600, 'credit_card', 'completed', NOW()),
(2, 2, 1250, 'paypal', 'pending', NOW());
