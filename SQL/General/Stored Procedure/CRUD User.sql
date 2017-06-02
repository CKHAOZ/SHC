USE [SHC]
GO
/****** Object:  StoredProcedure [dbo].[SP_CRUD_USERCONDAI]    Script Date: 2/06/2017 4:15:23 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan Alejandro Cubillos Prieto	
-- Create date: 30/05/2017
-- Description:	Crud User 
-- =============================================
ALTER PROCEDURE [dbo].[SP_CRUD_USERCONDAI]
	@idUsu int = null,
	@usuFirstName varchar(64) = null,
	@usuLastName varchar(64) = null,
	@usuUserName varchar(50) = null,
	@usuPassword varchar(50) = null,
	@usuActive bit = null,
	@usuAction varchar(1)
AS
BEGIN
	SET NOCOUNT ON;

	IF(@usuAction = 'i' AND @usuUserName IS NOT NULL)
	BEGIN
		-- Insert
		INSERT INTO UserCondai
		SELECT @usuFirstName, @usuLastName, @usuUserName, @usuPassword, @usuActive;
		SELECT @@IDENTITY;
	END
	ELSE IF(@usuAction = 's' AND @idUsu > 0)
	BEGIN
		-- Select
		SELECT * from UserCondai where idUsu = @idUsu;
	END 
	ELSE IF(@usuAction = 'u')
	BEGIN
		-- Update
		UPDATE UserCondai
		SET usuFirstName = @usuFirstName,
			usuLastName = @usuLastName,
			usuUserName = @usuUserName,
			usuPassword = @usuPassword,
			usuActive = @usuActive
		WHERE idUsu = @idUsu;
	END 
	ELSE IF(@usuAction = 'd' AND @idUsu > 0)
	BEGIN
		-- Delete
		UPDATE UserCondai
		SET usuActive = 0
		WHERE idUsu = @idUsu
	END

	-- Return Error in database
	IF(@@ERROR > 0)
		SELECT -2 as RESULT;
	ELSE IF (@usuAction in('u', 'd'))
		SELECT @idUsu;
END
