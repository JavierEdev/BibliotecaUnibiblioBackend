USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_EliminarAreaTematica'
 )
BEGIN
   DROP PROCEDURE sp_EliminarAreaTematica
END
GO
CREATE PROCEDURE sp_EliminarAreaTematica
    @idArea INT
AS
BEGIN
    DELETE FROM [UNB_Q01].[dbo].[areaTematica]
    WHERE [idArea] = @idArea;
END;