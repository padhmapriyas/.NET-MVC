
ALTER FUNCTION [dbo].[PRO_AddNumber]
    (@num1 INT, @num2 INT)
RETURNS INT
AS
BEGIN
    DECLARE @result INT;
    SET @result = @num1 + @num2;
    RETURN @result;
END;