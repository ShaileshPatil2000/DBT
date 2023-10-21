create table if not exists log (id int primary key auto_increment, curr_date DATE, curr_time TIME, user_details VARCHAR(100), message VARCHAR(100) ,emails VARCHAR(100));

drop PROCEDURE if EXISTS checkUser;
delimiter $

create procedure checkUser(emails varchar(65),message VARCHAR(100))
BEGIN

DECLARE x BOOLEAN ;

SELECT true into x from login where emailid = emails;

if (x=1) THEN

select username,password from login  ;

ELSE

insert into log(curr_date , curr_time ,user_details, message,emails) VALUES(CURRENT_date(), CURRENT_time(), USER(), message,emails);

end if;

end $

delimiter ; 