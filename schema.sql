
-- Bus Details
CREATE TABLE buses (
    bus_id INT PRIMARY KEY,
    bus_name VARCHAR(50),
    source VARCHAR(50),
    destination VARCHAR(50),
    total_seats INT
);

-- Booking Details
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    bus_id INT,
    passenger_name VARCHAR(100),
    seats_booked INT,
    booking_date DATE,
    FOREIGN KEY (bus_id) REFERENCES buses(bus_id)
);
