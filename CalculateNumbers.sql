CREATE PROCEDURE PRO_CalculateNumbers
    @num1 INT,
    @num2 INT,
    @operation VARCHAR(20),
    @result FLOAT OUTPUT,
    @success BIT OUTPUT
AS
BEGIN
    IF @operation = 'Add'
    BEGIN
        SET @result = @num1 + @num2;
        SET @success = 1;
    END
    ELSE IF @operation = 'Multiply'
    BEGIN
        SET @result = @num1 * @num2;
        SET @success = 1;
    END
    ELSE IF @operation = 'Subtract'
    BEGIN
        SET @result = @num1 - @num2;
        SET @success = 1;
    END
    ELSE IF @operation = 'Divide'
    BEGIN
        -- Check for division by zero
        IF @num2 = 0
        BEGIN
            PRINT 'Error: Division by zero.';
            SET @result = NULL;
            SET @success = 0;
        END
        ELSE
        BEGIN
            SET @result = CAST(@num1 AS FLOAT) / @num2;
            SET @success = 1;
        END
    END
    ELSE
    BEGIN
        PRINT 'Error: Invalid operation.';
        SET @result = NULL;
        SET @success = 0;
    END
END;
