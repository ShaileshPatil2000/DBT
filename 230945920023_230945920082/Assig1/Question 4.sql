/*4.	Write a procedure (named addStudent) that inserts a new student with his phone number and his address into the STUDENT, PHONE, and ADDRESS table*/
DROP PROCEDURE IF EXISTS addStudent;
delimiter $
CREATE PROCEDURE addStudent(firstname varchar(30), lastname varchar(40),DOB date, emailID varchar(100),number1 varchar(15),address1 varchar(100))
BEGIN
	declare x,y,z int;
	select max(id)+1 into x from student; 
	insert into student values(x,firstname, lastname, DOB , emailID);
	
	select max(id)+1 into y from student_phone; 
	insert into student_phone values(y,x,number1,1);
	
	select max(id)+1 into z from student_phone; 
	insert into student_address values(z,x,address1);
	

END $
delimiter ;