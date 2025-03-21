drop table customer; -- Make Habit: For easier cleaning.

DESCRIBE customer;

CREATE TABLE customer(
	c_id INT auto_increment,
	c_name VARCHAR(20),
    c_score DEC(4,3),
    c_lname VARCHAR(20),
    c_location VARCHAR(30),
    c_email VARCHAR(20) UNIQUE,
    PRIMARY KEY (c_id)
);

SELECT * 
FROM CUSTOMER;

INSERT INTO customer(c_name,c_score,c_lname,c_location,c_email) VALUES('Susman',2.456,'Tokechen','United States','customerG@gmail.com');
INSERT INTO customer(c_name,c_score,c_lname,c_location,c_email) VALUES('Dusman',6.466,'Yokechen','South America','customerH@gmail.com');
INSERT INTO customer(c_name,c_score,c_lname,c_location,c_email) VALUES('Fusman',3.456,'Uokechen','Europe','customerJ@gmail.com');
INSERT INTO customer(c_name,c_score,c_lname,c_location,c_email) VALUES('Gusman',1.456,'Iokechen','Australia','customerK@gmail.com');

UPDATE customer
set c_location = 'AU' -- Change Each according to Location: SA, EU, AU 
where c_location = 'Australia'; -- Match according to location

-- SELECT all the users with c_score above a 2.x AND another code to return all users below 3.xor

SELECT * FROM customer
WHERE c_score >= 2.1;

SELECT * FROM customer
WHERE c_score <=3.0;

-- Building off last query selection practice, Order by c_score and return name and last name. FOllow same score selection previously

SELECT c_id, c_name, c_lname FROM customer
WHERE c_score >=2.1
ORDER BY c_id;

SELECT c_id, c_name, c_lname FROM customer
WHERE c_score <=3.0
ORDER BY c_id;

-- Add a column to table for PASS, and assign PASS or FAIL for c_score above 2.1

ALTER TABLE customer add c_type VARCHAR(10);

UPDATE customer
set c_type = 'PASS'
where c_score >2.1;

UPDATE customer
set c_type = 'FAIL'
where c_score <=2.1

