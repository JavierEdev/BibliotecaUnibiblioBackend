USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_InsertarAreaTematica'
 )
BEGIN
   DROP PROCEDURE sp_InsertarAreaTematica
END
GO
CREATE PROCEDURE sp_InsertarAreaTematica
    @descripcion NVARCHAR(100)
AS
BEGIN
    INSERT INTO [UNB_Q01].[dbo].[areaTematica] ([descripcion],estado)
    VALUES (@descripcion,1);
END;