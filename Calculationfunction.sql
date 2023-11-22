create PROCEDURE PRO_calculateNumbers_function
    @num1 INT,
    @num2 INT,
    @operation VARCHAR(30),
    @result INT OUTPUT
AS
BEGIN
    IF @operation = 'addition'
    BEGIN
        SET @result = dbo.PRO_AddNumber(@num1, @num2);
        PRINT 'The result of addition is: ' + CAST(@result AS VARCHAR(10));
    END
    ELSE IF @operation = 'subtraction'
    BEGIN
        SET @result = dbo.PRO_Subtract(@num1, @num2);
        PRINT 'The result of subtraction is: ' + CAST(@result AS VARCHAR(10));
    END
    ELSE IF @operation = 'division'
    BEGIN
        SET @result = dbo.SP_Division(@num1, @num2);

        -- Check for division by zero
        IF @result IS NULL
        BEGIN
            PRINT 'Error: Division by zero.';
        END
        ELSE
        BEGIN
            PRINT 'The result of division is: ' + CAST(@result AS VARCHAR(20));
        END;
    END
    ELSE
    BEGIN
        PRINT 'Error: Invalid operation.';
        SET @result = NULL; -- Set @result to NULL for invalid operations
    END
END;
