

Alter PROCEDURE clustered_addition
AS
BEGIN

CREATE TABLE #TempTable (
    id int ,result int 
);
--insert into #TempTable
--(id) VALUES 
--(1),
--(2),
--(3),
--(4),
--(5),
--(6),
--(8),
--(400)
select * from #TempTable
select * from ClusteredTable

-- Insert values into #TempTable
INSERT INTO #TempTable (id, result)
SELECT id, id + sno
FROM ClusteredTable;


   SELECT t.id, t.result 
    FROM #TempTable t
    JOIN ClusteredTable c ON t.id = c.id
    WHERE t.result = c.id + c.sno;
END;
