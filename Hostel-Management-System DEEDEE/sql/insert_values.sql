INSERT INTO hostels (name, address, warden_name, phone) VALUES
('North Hall', '12 College Rd, Pune', 'Mr. Raghav Sharma', '9876543210'),
('South Hall', '5 University Ave, Pune', 'Ms. Priya Menon', '9823456789'),
('East Wing', 'Main Campus, Block E', 'Mr. Arjun Nair', '9812233445');

INSERT INTO blocks (hostel_id, name, floor_no) VALUES
(1, 'Sukhna A', 1),
(2, 'Beas B', 2),
(3, 'Ravi C', 3);

INSERT INTO rooms (hostel_id, block_id, room_number, room_type, monthly_rent) VALUES
(1, 1, 101, 'Single', 5000.00),
(1, 1, 102, 'Double', 7500.00),
(2, 2, 201, 'Single', 5500.00);

INSERT INTO students (roll_no, first_name, last_name, gender, dob, phone, email, course, year_of_study, emergency_contact_name, emergency_contact_phone)
VALUES
('STU001', 'Riya', 'Sharma', 'Female', '2004-02-14', '9876543210', 'riya.sharma@email.com', 'B.Tech', 2, 'Raj Sharma', '9812345678'),
('STU002', 'Amit', 'Verma', 'Male', '2003-07-22', '9876501234', 'amit.verma@email.com', 'BCA', 3, 'Neeta Verma', '9811112233');

INSERT INTO staff (name, phone, email) VALUES
('Mr. Ravi Kumar', '9876001234', 'ravi.kumar@hostel.com'),
('Mrs. Neha Sharma', '9988776655', 'neha.sharma@hostel.com');

INSERT INTO visitors (student_id, visitor_name, relationship, phone, visit_date, check_in_time, check_out_time, id_proof, purpose)
VALUES
(1, 'Raj Sharma', 'Father', '9812345678', '2025-11-01', '2025-11-01 10:00:00+05:30', '2025-11-01 12:30:00+05:30', 'Aadhar-1234', 'Visit student'),
(2, 'Neeta Verma', 'Mother', '9811112233', '2025-11-02', '2025-11-02 09:45:00+05:30', '2025-11-02 11:00:00+05:30', 'PAN-5678', 'Deliver essentials');
