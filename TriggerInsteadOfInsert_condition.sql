

ALTER TRIGGER [dbo].[agecolumn_insert_simple_table]
ON [dbo].[simple_table]
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO simple_table (name, age, name_age)
    SELECT 
        name, 
        CASE WHEN age < 18 THEN -18 ELSE age END,
        name + ' ' + CAST(CASE WHEN age < 18 THEN '-18' ELSE age END AS VARCHAR)
    FROM INSERTED;
END;


