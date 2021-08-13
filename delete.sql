CREATE TABLE animals (
id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER
);

-- INSERT INTO animals ( name, type, age ) 
-- VALUES ('Leo', 'lion', 12),
-- ('Jerry', 'mouse', 4), 
-- ('Marty', 'zebra', 10), 
-- ('Gloria', 'hippo', 8), 
-- ('Alex', 'lion', 9), 
-- ('Melman', 'giraffe', 15), 
-- ('Nala', 'lion', 2), 
-- ('Marie', 'cat', 1), 
-- ('Flounder', 'fish', 8);

-- SELECT * FROM animals;

-- Copy, paste, and run the SQL code from the summary.
-- Delete all `lion` entries from the table.
DELETE from animals
WHERE type = 'lion'

-- Delete all animals whose names start with “M”.
DELETE from animals
WHERE name ~ '^M';

-- Delete all entries whose age is less than 9.
DELETE from animals
WHERE age < 9;