USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_InsertarGrupoLibro'
 )
BEGIN
   DROP PROCEDURE sp_InsertarGrupoLibro
END
GO
CREATE PROCEDURE sp_InsertarGrupoLibro
    @descripcion NVARCHAR(100)
AS
BEGIN
    INSERT INTO [UNB_Q01].[dbo].[grupoLibro] ([descripcion])
    VALUES (@descripcion);
END;
