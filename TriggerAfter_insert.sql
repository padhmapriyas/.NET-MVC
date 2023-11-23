
ALTER TRIGGER [dbo].[after_insert_simple_table]
ON [dbo].[simple_table]
AFTER INSERT
AS
BEGIN
    INSERT INTO cpysimple_table (name, age)
    SELECT name, age FROM INSERTED;
END;