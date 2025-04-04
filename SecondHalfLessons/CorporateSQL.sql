DROP TABLE employee;
SELECT * FROM employee;
SELECT * FROM branch_supplier;
SELECT * FROM works_with;
DESCRIBE employee;

CREATE TABLE employee(
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_date DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT, 
    branch_id INT
);

CREATE TABLE branch(
	branch_id INT PRIMARY KEY,
    branch_name VARCHAR(20),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;


ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

CREATE TABLE t_client(
	client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE works_with(
	emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
	FOREIGN KEY (client_id) REFERENCES t_client(client_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier(
	branch_id INT,
    supplier_name VARCHAR(30),
    supply_type VARCHAR(30),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

INSERT INTO branch_supplier VALUES(2,'Hammer Mill','Paper');
INSERT INTO branch_supplier VALUES(2,'Uni-Ball','writing');
INSERT INTO branch_supplier VALUES(3,'patriot paper','Paper');
INSERT INTO branch_supplier VALUES(2,'J.T','Custom Form');
INSERT INTO branch_supplier VALUES(3,'uni-Ball','writing');
INSERT INTO branch_supplier VALUES(3,'Hammer Mill','Paper');
INSERT INTO branch_supplier VALUES(3,'stamford','Form');

# Inserting employees into data

INSERT INTO employee VALUES(100, 'David','Wallace','1967-11-17','M',250000,NULL,NULL); -- why is branch_id set to NULL?

INSERT INTO branch VALUES(1,'Corporate',100,'2006-02-09');

UPDATE employee
SET branch_id = 1
WHERE emp_id=100;

INSERT INTO employee VALUES(101,'Jan','Levinson','1961-05-11','F',110000,100,1);

# branch_id's 2
INSERT INTO employee VALUES(102,'Michael','Scott','1964-03-15','M',75000,100,NULL);
INSERT INTO branch VALUES(2,'Scranton',102,'1992-04-06');

UPDATE employee
set branch_id=2
where emp_id=102;

INSERT INTO employee VALUES(103,'Angela','Martin','1971-006-25','F',63000,102,2);
INSERT INTO employee VALUES(104,'Kelly','Kapoor','1980-02-05','F', 55000,102,2);
INSERT INTO employee VALUES(105,'Stanely','Hudson','1958-02-19','M',69000,102,2);

INSERT INTO employee VALUES(106,'Josh','Porter','1969-09-05','M',78000,100,NULL);
INSERT INTO branch VALUES(3,'Stamford',106,'1998-02-13');

UPDATE employee
set branch_id=3
where emp_id=106;

INSERT INTO employee VALUES(107,'Andy','Bernard','1973-07-22','M',65000,106,3);
INSERT INTO employee VALUES(108,'Jim','Halpert','1978-10-01','M',71000,106,3);

INSERT INTO t_client VALUES(400,'DUNMORE Highschool', 2);

SELECT DISTINCT sex as Employee_Gender
FROM employee;

SELECT sum(salary) as Male_SUM
FROM employee
where sex = 'M';
