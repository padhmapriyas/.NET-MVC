
ALTER FUNCTION [dbo].[PRO_Subtract]
  (  @num1 INT, @num2 INT)
RETURNS INT  

AS
BEGIN
  DECLARE @result INT;
    SET @result = @num1 - @num2;
	RETURN @RESULT
END;
