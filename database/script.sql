-- Script SQL para la base de datos de colección musical
CREATE DATABASE music_collection;
USE music_collection;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE albums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    year YEAR,
    description TEXT,
    artists VARCHAR(255),
    medium VARCHAR(50),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    duration TIME,
    interpreter VARCHAR(100),
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES albums(id)
);