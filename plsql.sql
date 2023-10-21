drop procedure if exist pro1
delimiter $
create procedure pro1
BEGIN
Select "Hello World" as "Column 1";
end$
DELIMITER ;
