
ALTER FUNCTION [dbo].[SP_Division]
(
    @num1 INT,
    @num2 INT
)
RETURNS FLOAT
AS
BEGIN
    DECLARE @result FLOAT;

    -- Check for division by zero
    IF @num2 = 0
    BEGIN
        -- Return a special value (e.g., NULL) to indicate an error
        RETURN NULL;
    END
    ELSE
    BEGIN
        SET @result = CAST(@num1 AS FLOAT) / @num2;
        RETURN @result; -- Return the result of division
    END
	 RETURN @result;
END;
