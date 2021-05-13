CREATE DATABASE #INVEST;

USE #INVEST;

CREATE TABLE Users (
	id		  INT IDENTITY(1,1) PRIMARY KEY,
    name	  VARCHAR (30) NOT NULL,
	lastname  VARCHAR (30) NOT NULL,
	email     VARCHAR (30) NOT NULL,
	cel		  VARCHAR (30) NOT NULL,
	cpf		  VARCHAR (30) NOT NULL,
	login	  VARCHAR (30) NOT NULL,
	password  VARCHAR (30) NOT NULL
);

INSERT INTO users
VALUES ('eduardo', 'franco', 'aneweduardo@hotmail.com', '24992120807', '00000000000', 'eduardote', 'eduardo123');

SELECT * FROM USERS;

DROP TABLE USERS;