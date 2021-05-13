USE [CORRETORA]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Register]
	@name varchar(30),
	@lastname varchar(30),
	@email varchar(30),
	@cel varchar(30),
	@cpf varchar(30),
	@login varchar(30),
	@password varchar(30)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Users
	VALUES (@name, @lastname, @email, @cel, @cpf, @login, @password);

	SELECT * FROM Users WHERE name = @name and lastname = @lastname and email = @email and cel = @cel and cpf = @cpf and login = @login and password = @password;

END
GO