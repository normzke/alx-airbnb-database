# Entity-Relationship Diagram (ERD)

This ERD represents the database structure for the ALX Airbnb clone project. It defines all major entities, their attributes, and relationships to support a scalable and real-world system.

---

## 🏗️ Entities and Attributes

### 1. User
- `id` (Primary Key)
- `name`
- `email`
- `password`
- `phone_number`
- `created_at`

### 2. Property
- `id` (Primary Key)
- `owner_id` (Foreign Key → User)
- `title`
- `description`
- `location`
- `price_per_night`
- `created_at`

### 3. Booking
- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `property_id` (Foreign Key → Property)
- `start_date`
- `end_date`
- `total_price`
- `status`

### 4. Review
- `id` (Primary Key)
- `user_id` (Foreign Key → User)
- `property_id` (Foreign Key → Property)
- `rating`
- `comment`
- `created_at`

### 5. Payment
- `id` (Primary Key)
- `booking_id` (Foreign Key → Booking)
- `amount`
- `payment_date`
- `payment_method`
- `status`

---

## 🔁 Relationships

- One `User` can own many `Properties`.
- One `User` can make many `Bookings`.
- One `Booking` is for one `Property` and one `User`.
- One `Property` can have many `Bookings` and many `Reviews`.
- One `Review` is written by a `User` about a `Property`.
- One `Payment` is linked to one `Booking`.

---

## 🧰 Tool Used

The diagram was created using [draw.io](https://draw.io).

> Diagram file is saved as `ERD/airbnb_ERD.drawio`.

