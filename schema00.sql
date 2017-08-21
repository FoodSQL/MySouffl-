DROP DATABASE IF EXISTS my_chef;
CREATE DATABASE my_chef;
USE my_chef;

CREATE TABLE Recipe (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    _name VARCHAR(500) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    difficulty INT UNSIGNED NOT NULL,
    price_range INT UNSIGNED,
    PRIMARY KEY (id)
);

CREATE TABLE Ingredient (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    _name VARCHAR(500) NOT NULL UNIQUE,
    price_range INT UNSIGNED,
    PRIMARY KEY (id)
);

CREATE TABLE Pantry (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    _name VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE _User (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    _name VARCHAR(500) NOT NULL,
    login VARCHAR(64) NOT NULL UNIQUE,
    _password VARCHAR(64) NOT NULL,
    email VARCHAR(124) NOT NULL,
    birthdate DATE,
    PRIMARY KEY (id)
);

CREATE TABLE Recipe_Ingredient (
    id_recipe INT NOT NULL,
    id_ingredient INT NOT NULL,
    FOREIGN KEY (id_recipe)
        REFERENCES Recipe (id),
    FOREIGN KEY (id_ingredient)
        REFERENCES Ingredient (id),
    PRIMARY KEY (id_recipe , id_ingredient)
);

CREATE TABLE Ingredient_Pantry (
    id_ingredient INT NOT NULL,
    id_pantry INT NOT NULL,
    FOREIGN KEY (id_ingredient)
        REFERENCES Ingredient (id),
    FOREIGN KEY (id_pantry)
        REFERENCES Pantry (id),
    PRIMARY KEY (id_ingredient , id_pantry)
);

CREATE TABLE User_Pantry (
    id_user INT NOT NULL,
    id_pantry INT NOT NULL,
    FOREIGN KEY (id_user)
        REFERENCES _User (id),
    FOREIGN KEY (id_pantry)
        REFERENCES Pantry (id),
    PRIMARY KEY (id_user , id_pantry)
);
