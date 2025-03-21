CREATE TABLE student(
	student_id int,
    student_name VARCHAR(20),
    student_email VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;

alter table student add gpa decimal(3,2);

alter table student drop column gpa;