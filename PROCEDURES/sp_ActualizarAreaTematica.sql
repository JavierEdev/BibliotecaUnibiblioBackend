USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_ActualizarAreaTematica'
 )
BEGIN
   DROP PROCEDURE sp_ActualizarAreaTematica
END
GO
CREATE PROCEDURE sp_ActualizarAreaTematica
    @idArea INT,
    @descripcion NVARCHAR(100)
AS
BEGIN
    UPDATE [UNB_Q01].[dbo].[areaTematica]
    SET [descripcion] = @descripcion
    WHERE [idArea] = @idArea;
END;