
drop procedure if exists Print1;

delimiter $
CREATE  PROCEDURE Print1(num int) 
BEGIN
	
	
	declare lastDigit int;
	
	set @output := '';
	drop table if exists word;
	create table word(num int auto_increment primary key,numWord varchar(25));
	insert into word(numWord) values("One"),("Two"),("Three"),("Four"),("Five"),("Six"),("Seven"),("Eight"),("Nine"),("Ten");
	
	l1:loop
	if num > 0 THEN
		set lastDigit:= num%10;
		set num:=(num/10);
		
		/* set @output :=concat(numWord from word where lastDigit=word.num," "); */
		
		
		select numWord from word where lastDigit=word.num;
	ELSE
		leave l1;
	end if;
	end loop l1;
	
		
		
	
END $
delimiter ;


