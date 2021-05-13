USE [#INVEST]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ForgotMyPassword]
	@login varchar(30),
	@lastname varchar (30),
	@cpf varchar (30)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Users WHERE login = @login and lastname = @lastname and @cpf = cpf;

END
GO