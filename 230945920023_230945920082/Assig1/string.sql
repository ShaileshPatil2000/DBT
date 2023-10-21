drop procedure if exists pro1;
delimiter .

create procedure pro1(str1 varchar(20))

begin
declare x int;
set x=1;
set @ans="";


l:loop
if x=1 THEN
set @ans:=concat(@ans,'',substr(str1,x,1));

else
set @ans:=concat(@ans,',',substr(str1,x,1));
end if;

if x >length(str1) then leave l;
end IF;
set x=x+1;
end loop l;


end .

delimiter ;