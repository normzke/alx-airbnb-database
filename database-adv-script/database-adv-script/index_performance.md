# Index Performance Report

## Goal
Improve performance of SELECT queries involving filters and joins on large tables by introducing appropriate indexes.

---

## Before Indexing

Sample query:
```sql
SELECT * FROM bookings WHERE user_id = 7;
