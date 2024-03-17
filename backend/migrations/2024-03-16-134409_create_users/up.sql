-- Your SQL goes here
CREATE TABLE users
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    email VARCHAR(64) NOT NULL
);
