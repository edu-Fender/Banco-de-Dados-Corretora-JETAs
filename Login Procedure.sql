-- ================================================
-- Procedure to deal with user login
-- ================================================

USE [#INVEST]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Login]
	@login varchar(30),
	@password varchar (30)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Users WHERE login = @login and password = @password;

END
GO