-- Checking collation of table
SELECT TABLE_SCHEMA
    , TABLE_NAME
    , TABLE_COLLATION 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'services';

-- Checking collation of columns
SELECT TABLE_NAME 
    , COLUMN_NAME 
    , COLLATION_NAME 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'services';