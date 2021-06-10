-- ================================================
-- Trigger that creates table (if it not exists) 
-- to register database modifications
-- ================================================

USE [#INVEST];

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER RegisterChanges
	ON  Users
	FOR INSERT, UPDATE, DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	
	CREATE TABLE Changes (
		id		  INT IDENTITY(1,1) PRIMARY KEY,
		author	  VARCHAR (30) NOT NULL,
		datetime  DATETIME NOT NULL
	);

	INSERT INTO Changes
	VALUES (USER_NAME(), GETDATE())

	-- SELECT * FROM Changes

END
GO
