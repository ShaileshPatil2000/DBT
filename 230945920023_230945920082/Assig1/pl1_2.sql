drop procedure if  exists pro1;
delimiter $

create procedure pro1(str1 varchar(20))
BEGIN
 declare y int;
 SET @name="";
 
 lbl: loop
 if x=1 THEN
 SET @name=concat(@name,'',substr(str1,y,1));
 ELSE
  SET @name=concat(@name,',',substr(str1,y,1));
 end if;
 if y>length(str1) then leave lbl;
 end if;
 set y=y+1;
 end loop lbl;
 end $
 delimiter ;