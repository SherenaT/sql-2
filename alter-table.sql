-- Add a column to the animals table called “location”. It should have a VARCHAR data type.
ALTER TABLE animals
ADD location VARCHAR;

-- Insert 3 new animals into the table – make sure none of their fields are null.
INSERT INTO animals ( name, type, age, location ) 
VALUES ('Ally', 'horse', 12, 'Pasadena, CA'),
('Susie', 'giraffe', 12, 'Huntington Beach, CA'),
('Alan', 'turtle', 12, 'Glendale, CA')

-- Change the “type” column’s name to be “species”.
ALTER TABLE animals
RENAME COLUMN type TO species;

-- Change the “species” column data type to be VARCHAR.
ALTER TABLE animals
ALTER Column species type VARCHAR(55);
