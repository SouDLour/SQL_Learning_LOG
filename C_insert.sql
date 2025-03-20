CREATE TABLE student (
	student_id int auto_increment,
    student_name VARCHAR(20) UNIQUE,
    student_email VARCHAR(20) DEFAULT 'Undecided',
    student_major varchar(20),
    PRIMARY KEY(student_id)
);

DROP TABLE student;

SELECT * FROM student;

DESCRIBE student;

INSERT INTO student(student_name, student_email,student_major) VALUES('Bran','Bram@gmail.com','Biology');
INSERT INTO student(student_name, student_email,student_major) VALUES('dran','dram@gmail.com','Art Crafting');
INSERT INTO student(student_name, student_email,student_major) VALUES('fran','fram@gmail.com','Political Science');
INSERT INTO student(student_name, student_email,student_major) VALUES('f2ran','f2ram@gmail.com','Political Journalism');
INSERT INTO student(student_name, student_email,student_major) VALUES('gran','gram@gmail.com','Clasasical Music');
