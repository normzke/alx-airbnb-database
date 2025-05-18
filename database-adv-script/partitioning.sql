-- Create a partitioned table for bookings by year of start_date
CREATE TABLE bookings_partitioned (
    id INT,
    user_id INT,
    property_id INT,
    payment_id INT,
    start_date DATE,
    end_date DATE
) PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Example query to test performance on partitioned table
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';
