-- ================================================
-- Script to create Admins Table
-- ================================================

USE [#INVEST];

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Admins (
	id		  INT IDENTITY(1,1) PRIMARY KEY,
	adminName VARCHAR (30) NOT NULL,
	adminOf   INT NOT NULL FOREIGN KEY REFERENCES Users(id)
);

/*
INSERT INTO Admins
VALUES ('joao', 1),
	   ('medina', 3),
	   ('alex', 2),
	   ('joseffe', 4);

SELECT Admins.adminName, Admins.adminOf, Users.name, Users.lastname, Users.email 
FROM Users
JOIN Admins ON AdminOf = Users.id;
*/

GO