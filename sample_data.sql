
-- Insert buses
INSERT INTO buses (bus_id, bus_name, source, destination, total_seats) VALUES
(1, 'City Express', 'Delhi', 'Jaipur', 40),
(2, 'Night Rider', 'Lucknow', 'Kanpur', 30),
(3, 'Mountain Explorer', 'Dehradun', 'Manali', 35);

-- Insert bookings
INSERT INTO bookings (bus_id, passenger_name, seats_booked, booking_date) VALUES
(1, 'Rahul Sharma', 2, '2025-04-05'),
(2, 'Amit Verma', 3, '2025-04-04'),
(1, 'Neha Singh', 1, '2025-04-05'),
(3, 'Priya Mehra', 4, '2025-04-03');
