CREATE TABLE student(
	student_id int,
    student_name VARCHAR(20),
    student_email VARCHAR(20),
    PRIMARY KEY(student_id)
);

SELECT * FROM student;

INSERT INTO student(student_id, student_email) VALUES(5,'aarlos@foklore');
-- Another way to add data: INSERT INTO student VALUES(5,'CoolName','aarlos@foklore');
