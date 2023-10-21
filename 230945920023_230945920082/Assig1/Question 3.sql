/*	Write a procedure(named getQualification) that takes studentID as a parameter. If studentID is present in the student table, then print his student details along with STUDENT_QUALIFICATION details and if the studentID is not present display message “Student not found…” (Use: STUDENT, and STUDENT_QUALIFICATION tables)*/
drop PROCEDURE if EXISTS getQualification;
delimiter $
create PROCEDURE getQualification(studentID int)
BEGIN
declare x BOOLEAN;
select true into x from student where id = studentID;
if(x) THEN
	select * from student s join student_qualifications sq on s.id=sq.studentID ;
else 
select "student not found" as Warning;
end if;
end $
delimiter ;