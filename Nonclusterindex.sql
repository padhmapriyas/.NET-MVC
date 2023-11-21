-- Add a new column 'sno' to the existing table
ALTER TABLE ClusteredTable
ADD sno INT;

-- Update the 'sno' column with some values
UPDATE ClusteredTable
SET sno = id + 100;

-- Display the updated table structure and data
EXEC sp_help 'ClusteredTable';
SELECT * FROM ClusteredTable;

-- Create a nonclustered index on the 'sno' column
CREATE NONCLUSTERED INDEX NonClusteredIndex_Sno
ON ClusteredTable (sno);

-- Example of a SELECT query that can benefit from the nonclustered index on 'sno'
SELECT * FROM ClusteredTable WHERE sno = 103;

-- Display the updated index information
EXEC sp_helpindex 'ClusteredTable';
