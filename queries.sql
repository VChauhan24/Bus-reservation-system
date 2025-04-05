
-- View all buses
SELECT * FROM buses;

-- Total bookings for each bus
SELECT b.bus_id, b.bus_name, SUM(seats_booked) AS total_booked
FROM bookings bk
JOIN buses b ON bk.bus_id = b.bus_id
GROUP BY b.bus_id;

-- Available seats for a specific bus (e.g., bus_id = 1)
SELECT 
    b.bus_id,
    b.bus_name,
    b.total_seats - IFNULL(SUM(seats_booked), 0) AS available_seats
FROM buses b
LEFT JOIN bookings bk ON b.bus_id = bk.bus_id
WHERE b.bus_id = 1
GROUP BY b.bus_id;

-- Insert a new booking
INSERT INTO bookings (bus_id, passenger_name, seats_booked, booking_date)
VALUES (2, 'Suman Joshi', 2, '2025-04-06');

-- Cancel a booking by ID
DELETE FROM bookings WHERE booking_id = 3;
