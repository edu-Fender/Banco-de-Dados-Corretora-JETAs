-- ================================================
-- Main script to create database and tables
-- ================================================

CREATE DATABASE [#INVEST];

USE [#INVEST];

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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

/*
INSERT INTO Users
VALUES ('eduardo', 'franco', 'eduardo@hotmail.com', '2499584737', '75996548998', 'eduardote', 'banana21'),
       ('tales', 'carneiro', 'tales@outlook.com', '13998127788', '13246579828', 'talestx', 'camaroamarelo'),
       ('juan', 'lima', 'juan@gmail.com', '11993127648', '64978563195', 'juanpj', 'rinoceronte');
	   ('andre', 'fermino', 'andre@yahoo.com', '54993121346', '95637894685', 'andrelol', 'superiate');

SELECT * FROM USERS;
*/

GO