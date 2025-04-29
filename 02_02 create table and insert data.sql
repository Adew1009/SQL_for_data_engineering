-- Schema
-- !CODE PLATOON EXAMPLE
CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

create table categories(
category_id serial primary key,
name varchar(100)
	)
	
CREATE TABLE Products (
  product_id SERIAL PRIMARY KEY, 
  name VARCHAR(100), 
  price DECIMAL(10, 2), 
  description VARCHAR(255), 
  tags VARCHAR(255), 
  category_id INT, 
  FOREIGN KEY (category_id) REFERENCES categories(category_id), 
  Supplier VARCHAR(100)
);


CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY, 
  customer_name VARCHAR(100) NOT NULL, 
  email VARCHAR(100) NOT NULL, 
  phone_number VARCHAR(20), 
  address VARCHAR(255), 
  City VARCHAR(255)
);


 CREATE TABLE Orders (
  order_id SERIAL PRIMARY KEY, 
  customer_id INT, 
  product_id INT, 
  total_quantity INT, 
  total_amount DECIMAL(10, 2), 
  order_rating DECIMAL(3, 1), 
  length DECIMAL(5, 2), 
  width DECIMAL(5, 2), 
  order_timestamp TIMESTAMP, 
  delivery_timestamp TIMESTAMP,
	 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id), 
	 FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO Categories (name) VALUES  ('Electronics'),  ('Clothing'),  ('Home and Kitchen')


INSERT INTO Products (name, price, description, tags, category_id,Supplier)
VALUES
    ('Laptop', NULL, 'High-performance laptop for professionals', 'electronics, portable, tech', 1, 'SupplierA'),
 
    ('Headphones', 129.99, 'Over-ear wireless headphones', 'electronics, audio, accessories', 1, 'SupplierB'),
 
    ('Backpack', 49.99, 'Stylish and durable backpack for everyday use', 'fashion, accessories, travel', 2, 'NULL'),
 
    ('Coffee Maker', NULL, 'Automatic drip coffee maker with programmable timer', 'home, kitchen, appliances', 3, 'NULL'),
 
    ('Fitness Tracker', 79.99, 'Water-resistant fitness tracker with heart rate monitor', 'electronics, fitness, wearables', 1, 'NULL');
	
	
	
	
INSERT INTO Customer (customer_name, email, phone_number, address, city) VALUES
    ('Alice Johnson', 'alice@example.com', '123-456-7890', '123 Main St', 'Cityville'),
    ('Bob Smith', 'bob@example.com', '987-654-3210', '456 Oak Ave', 'Townsville'),
    ('Charlie Brown', 'charlie@example.com', '555-123-4567', '789 Pine Ln', 'New York'),
    ('David White', 'david@example.com', '222-333-4444', '567 Maple Dr', 'NYC'),
    ('Eva Black', 'eva@example.com', '999-888-7777', '890 Cedar Rd', 'Big Apple'),
    ('Frank Green', 'frank@example.com', '111-222-3333', '123 Elm St', 'Gotham City');
	
	

INSERT INTO Orders (customer_id, product_id, total_quantity, total_amount, order_rating, length, width, order_timestamp, delivery_timestamp)
VALUES
    (1, 1, 5, 120.50, 4.5, 2.3, 1.8, '2023-01-15 10:30:00', '2023-01-16 15:45:00'),
    (2, 2, 3, 75.25, 3.8, 1.5, 1.2, '2023-02-03 14:20:00', '2023-02-05 11:10:00'),
    (3, 3, 7, 210.75, 4.2, 2.8, 2.0, '2023-03-12 08:45:00', '2023-03-14 09:30:00'),
    (1, 4, 2, 50.00, 4.0, 1.8, 1.5, '2023-04-05 12:15:00', '2023-04-07 18:20:00');
	
	
select * from categories
select * from Orders
select * from Customer
select * from Products


-- !CODE PLATOON EXAMPLE
-- Note: We're inserting records with an id value set because we want to use
-- particular ids as foreign keys. I.e. setting the address_id for a student
-- so it references a specific address record. If we didn't specify a value
-- for the id columns, the database would choose an integer for us.

INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (1, '6232 Guiseppe Courts', 'Jamartown', 'Maryland', '49028');
INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (2, '704 Cecil Mountain', 'West Jon', 'South Dakota', '91578');
INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (3, '41613 Huel Ranch', 'Loycefort', 'Florida', '12109');
INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (4, '1397 Braden Shoals', 'New Karine', 'New York', '03913');


INSERT INTO students (id, first_name, last_name, birthdate, address_id) VALUES (1, 'Tianna', 'Lowe', '1985-02-17', 1);
INSERT INTO students (id, first_name, last_name, birthdate, address_id) VALUES (2, 'Elda', 'Sipes', '1989-08-03', 2);
INSERT INTO students (id, first_name, last_name, birthdate, address_id) VALUES (3, 'Jed', 'Kunde', '1987-01-22', 3);
INSERT INTO students (id, first_name, last_name, birthdate, address_id) VALUES (4, 'Leopold', 'Towne', '1984-10-07', NULL);
INSERT INTO students (id, first_name, last_name, birthdate, address_id) VALUES (5, 'Andre', 'Rohan', '1989-09-01', 4);

INSERT INTO classes (id, name, credits) VALUES (1, 'CS 101', 4);
INSERT INTO classes (id, name, credits) VALUES (2, 'HIST 107', 3);
INSERT INTO classes (id, name, credits) VALUES (3, 'SPAN 210', 3);
INSERT INTO classes (id, name, credits) VALUES (4, 'PHYS 218', 4);
INSERT INTO classes (id, name, credits) VALUES (5, 'ART 118', 2);


-- Tianna took HIST 107 and got a 'B'
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (1, 1, 2, 'B');
-- Tiana is taking SPAN 210
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (2, 1, 3, NULL);
-- Elda took ART 118 and got an 'A'
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (3, 2, 5, 'A');
-- Elda is taking SPAN 210
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (4, 2, 3, NULL);
-- Elda is taking CS 101
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (5, 2, 1, NULL);
-- Jed is taking CS 101
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (6, 3, 1, NULL);
-- Jed is taking HIST 107
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (7, 3, 2, NULL);
-- Leopold is taking HIST 107
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (8, 4, 2, NULL);
-- Leopold is taking CS 101
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (9, 4, 1, NULL);
-- Leopold is taking SPAN 210
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (10, 4, 3, NULL);
-- Leopold took PHYS 218 and got a 'C'
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (11, 4, 4, 'C');
-- Leopold took CS 101 and got an 'A'
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (12, 4, 1, 'A');
-- Andre took CS 101 and got an 'B'
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (13, 5, 1, 'B');
-- Andre took HIST 107 and got an 'B'
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (14, 5, 2, 'B');
-- Andre is taking SPAN 210
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (15, 5, 3, NULL);
-- Andre is taking ART 118
INSERT INTO enrollments (id, student_id, class_id, grade) VALUES (16, 5, 5, NULL);

-- Because we've inserted rows with hardcoded values for the primary key, id
-- the sequence used to generate id values for new rows is stuck at "1". So
-- we manually reset the sequences to the max value of id for each table.
SELECT setval('addresses_id_seq', (SELECT MAX(id) FROM addresses));
SELECT setval('students_id_seq', (SELECT MAX(id) FROM students));
SELECT setval('classes_id_seq', (SELECT MAX(id) FROM classes));
SELECT setval('enrollments_id_seq', (SELECT MAX(id) FROM enrollments))