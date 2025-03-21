-- Selecting certain columns. Specyfying specific information 
-- we dont have  to use student. to locate specific oclumn. Makes easier read though

-- SELECT student.student_name, student.student_major
-- FROM student
-- ORDER BY student_name DESC -- We can still order columns by other columns not specified in SELECT line(line4) 
-- LIMIT 2;

	SELECT * FROM student
	-- WHERE student_major <>'Biology' or student_name='Gran'; -- One or other must be TRUE when using OR | AND needs both to be true
	WHERE student_name IN ('Bran', 'Fran','gran') and student_id > 2;

