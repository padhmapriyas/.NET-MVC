-- Create a sample table
CREATE TABLE ClusteredTable (
    id INT PRIMARY KEY,
    column1 VARCHAR(50),
    column2 VARCHAR(50)
);

-- Insert some values
INSERT INTO ClusteredTable (id, column1, column2) VALUES 
    (1, 'ValueA', 'ValueX'),
    (2, 'ValueB', 'ValueY'),
    (3, 'ValueC', 'ValueZ'),
    (7, 'ValueA', 'ValueX'),
    (6, 'ValueB', 'ValueY'),
    (8, 'ValueC', 'ValueZ');


-- Display the initial data
SELECT * FROM ClusteredTable;


-- Create a clustered index on the 'id' column
CREATE CLUSTERED INDEX ClusteredIndex_Id
ON ClusteredTable (id);

-- Display the table structure and index information
EXEC sp_helpindex 'ClusteredTable';

-- Example of a range query with a clustered index
SELECT * FROM ClusteredTable WHERE id BETWEEN 1 AND 3;

-- Example of an ORDER BY query with a clustered index
SELECT * FROM ClusteredTable ORDER BY id;

-- Example of a JOIN query with a clustered index
-- Assuming there is another_table with a column 'clustered_table_id'
-- and the 'id' column in ClusteredTable is used for the join
 SELECT * FROM ClusteredTable
 JOIN simple_table s ON ClusteredTable.id = s.id;

-- Example of inserting data into a table with a clustered index
-- Inserting in sequential order to demonstrate sequential insert performance
INSERT INTO ClusteredTable (id, column1, column2) VALUES (400, 'ValueD', 'ValueW');

-- Display the updated data
SELECT * FROM ClusteredTable;
