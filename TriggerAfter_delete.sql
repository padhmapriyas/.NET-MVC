
ALTER TRIGGER [dbo].[after_delete_simple_table]
ON [dbo].[simple_table]
AFTER DELETE
AS
BEGIN
    DELETE FROM cpysimple_table
    WHERE id IN (SELECT id FROM DELETED);
END;