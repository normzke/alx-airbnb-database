## Partitioning Performance Report

We implemented partitioning on the `bookings` table based on the `start_date` year. The table was split into yearly partitions (2021, 2022, 2023, etc.).

### Observations:

- Before partitioning: Full table scan even for single-year queries.
- After partitioning: Queries filtered by date now access only the relevant partition, significantly reducing I/O and improving speed.

### Conclusion:

Partitioning by date range is effective for large tables where queries frequently filter by time.
