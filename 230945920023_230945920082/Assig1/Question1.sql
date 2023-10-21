drop PROCEDURE if exists pro1;
delimiter $
CREATE PROCEDURE pro1(name varchar(30), password varchar(20), email_ID varchar(30))
BEGIN
CREATE table LOGIN(name varchar(30), password varchar(20), email_ID varchar(30));
insert into login values(name, password, email_ID);

END $ 
delimiter ;
