
drop procedure if exists tab;
delimiter $

create PROCEDURE tab(tname varchar(10))
BEGIN
set @a := concat("Drop table if exists ", tname);
prepare b from @a;
execute b;

set @x := concat("Create table ",tname," (username varchar(20),password varchar(30),email varchar(30))");
prepare z from @x;
execute z;

end $
delimiter ;

/*

drop PROCEDURE if EXISTS addUser;
delimiter $
CREATE PROCEDURE addUser()
BEGIN
	insert into LOGIN values ('ANKIT', 'bhjbjhbjh', 'ankit@gmail.com');
END $
delimiter ;
*/

drop PROCEDURE if EXISTS addUser;
delimiter $
CREATE PROCEDURE addUser(username varchar(20),password varchar(30),email varchar(30))
BEGIN
	insert into LOGIN values (username, password, email);
END $
delimiter ;
