drop procedure if exists Print1;
delimiter $
CREATE  PROCEDURE Print1() 


BEGIN
								
	select concat(left(ename,1),"(",substr(ename,2,length(ename)),")"," is " ,job)as output from emp ;
  
END $
delimiter ;
