CREATE DATABASE php_app;

USE php_app;

CREATE TABLE users(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL);

INSERT INTO users (name) VALUES ('Test1 test1'), ('Test2 test2');



