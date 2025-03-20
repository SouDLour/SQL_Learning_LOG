-- Updating Rows learning @ video 1:49

select * from student;

DELETE FROM student
where student_email='Bram@gmail.com' and student_name='Bran';

alter table student add student_gpa DECIMAL(3,2);

update student
-- set student_major = 'Art Major'
-- where student_major = 'Art Crafting' OR student_major= 'art'
set student_gpa = 3.21
where student_major = 'Political Science'



