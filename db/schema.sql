DROP DATABASE IF EXISTS grownup;

CREATE DATABASE grownup;

USE grownup;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS  topics (
    id INT AUTO_INCREMENT,
    user_id INT,
    title  VARCHAR(200) NOT NULL,
    created DATE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS  posts (
    id INT AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    body VARCHAR(1000) NOT NULL,
    user_id INT,
    topic_id INT,
    created DATE,
    updated DATE,
    PRIMARY KEY (id, user_id, topic_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS  comments (
    id INT AUTO_INCREMENT,
    body VARCHAR(3000) NOT NULL,
    user_id INT,
    topic_id INT,
    created DATE,
    updated DATE,
    PRIMARY KEY (id, user_id, topic_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS tags (
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)

);