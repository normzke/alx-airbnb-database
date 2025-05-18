-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT b.id AS booking_id, u.id AS user_id, u.name, b.property_id, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews (including properties that have no reviews)
SELECT p.id AS property_id, p.name, r.id AS review_id, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or booking is not linked to a user
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.property_id, b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
