
ALTER TRIGGER [dbo].[after_update_simple_table]
ON [dbo].[simple_table]
AFTER UPDATE
AS
BEGIN
    UPDATE cpysimple_table
    SET name = i.name, age = i.age
    FROM cpysimple_table c
    INNER JOIN INSERTED i ON c.id = i.id;
END;
