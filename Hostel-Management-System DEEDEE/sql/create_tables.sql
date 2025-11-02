CREATE TABLE hostels (
  hostel_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  address VARCHAR(100),
  warden_name VARCHAR(100),
  phone VARCHAR(20)
);

CREATE TABLE blocks (
  block_id SERIAL PRIMARY KEY,
  hostel_id INT REFERENCES hostels(hostel_id),
  name VARCHAR(50),
  floor_no INT
);

CREATE TABLE rooms (
  room_id SERIAL PRIMARY KEY,
  hostel_id INT REFERENCES hostels(hostel_id),
  block_id INT REFERENCES blocks(block_id),
  room_number INT,
  room_type VARCHAR(50),
  monthly_rent NUMERIC(10,2)
);

CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  roll_no VARCHAR(30),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  gender VARCHAR(10),
  dob DATE,
  phone VARCHAR(20),
  email VARCHAR(150),
  course VARCHAR(100),
  year_of_study INT,
  emergency_contact_name VARCHAR(100),
  emergency_contact_phone VARCHAR(20)
);

CREATE TABLE staff (
  staff_id SERIAL PRIMARY KEY,
  name VARCHAR(150),
  phone VARCHAR(30),
  email VARCHAR(150)
);

CREATE TABLE visitors (
  visitor_id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(student_id),
  visitor_name VARCHAR(150),
  relationship VARCHAR(50),
  phone VARCHAR(30),
  visit_date DATE,
  check_in_time TIMESTAMP WITH TIME ZONE,
  check_out_time TIMESTAMP WITH TIME ZONE,
  id_proof VARCHAR(100),
  purpose VARCHAR(255)
);
