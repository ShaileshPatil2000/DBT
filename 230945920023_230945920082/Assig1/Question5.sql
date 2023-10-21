/*5.	Write a procedure (named addQualification) that takes studentID, and qualification details as a parameter. If studentID is present in the STUDENT table, then insert the qualification in STUDENT_QUALIFICATION table and return a message “Record inserted” or else print ‘Student not found’. (hint: using OUT parameter) (Use: STUDENT, and STUDENT_QUALIFICATION tables)*/

drop procedure if EXISTS addQualification;
delimiter $
create PROCEDURE addQualification(id1 int,name1 varchar(200), college1 varchar(200), university1 varchar (200), marks1 varchar (200), year1 int)
BEGIN
declare x BOOLEAN;
declare c1 int;
select true into x from student where id1 = id;
if(x)THEN

select MAX(id)+1 into c1 from student_qualifications;
INSERT INTO STUDENT_QUALIFICATIONS(id, studentid, name, college, university, marks, year) values (c1,id1,name1, college1 , university1 , marks1, year1 );
ELSE
select "student not found";
end if;
end $
delimiter ;












































/*drop procedure if exists addQualification;
 
delimiter $ 
CREATE PROCEDURE addQualification(sid int, name1 varchar(128), college1 varchar(128), university1 varchar(128), marks1 varchar(30),year1 int);

BEGIN
 DECLARE x BOOLEAN;
 SELECT TRUE INTO x from student where id=sid;
 if(x=1) THEN 
 insert into student_qualifications (name , college, university, marks,year) values( name1 varchar(128), college1 varchar(128), university1 varchar(128), marks1 varchar(30),year1 int);
 
 select "Record Inserted"
 
 ELSE
 SELECT "Student not found";
 
 end if;
 END $
 delimiter ;*/