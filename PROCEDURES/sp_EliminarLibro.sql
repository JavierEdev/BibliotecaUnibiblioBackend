USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_EliminarLibro'
 )
BEGIN
   DROP PROCEDURE sp_EliminarLibro
END
GO
CREATE PROCEDURE sp_EliminarLibro
    @idLibro INT
AS
BEGIN
    DELETE FROM [UNB_Q01].[dbo].[libros]
    WHERE [idLibro] = @idLibro;
END;