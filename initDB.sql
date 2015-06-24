CREATE DATABASE testDB;

CREATE USER 'testDbUser'@'localhost';
SET PASSWORD FOR 'testDbUser'@'localhost' = PASSWORD('MySuper5ecretPa55word!');
GRANT SELECT, UPDATE, INSERT, DELETE ON testDB.* TO 'testDbUser'@'localhost';

