--CREATE A DATABASE
CREATE DATABASE db_name;

--CREATE A DATABASE WITH SPECIFIED MASTER DATABASE FILE(mdf), LOG DATABASE FILE(ldf), SIZE AND MAXSIZE FOR BOTH FILES
CREATE DATABASE db_name
ON(
NAME='filename',
FILENAME='location to save file(must not be in the C drive to avoid permission error).mdf',
SIZE=initial_size(can be in mb),
MAXSIZE=maximum_size(can be in mb),
FILEGROWTH=file_growth_on_each_entry
)
LOG ON(
NAME='filename(must be different from privious filename',
FILENAME='location to save file(must not be in the C drive to avoid permission error).ldf',
SIZE=initial_size(can be in mb),
MAXSIZE=maximum_size(can be in mb),
FILEGROWTH=file_growth_on_each_entry
)

-- USE DATABASE
USE db_name;

-- CREATE TABLE
CREATE TABLE table_name(
field_name data_type others_parameters
)

--VIEW TABLE
SELECT * FROM table_name

--INSERT DATA INTO A TABLE
INSERT INTO table_name(fields_to_insert_data_into)
VALUES
(values_mapped_according_to_the_fields);

--SHOW DATABASE INFO
EXECUTE sp_helpdb;

--SHOW ALL TABLES IN A DATABASE
EXEC sp_tables;


