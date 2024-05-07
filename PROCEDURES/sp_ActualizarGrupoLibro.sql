USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_ActualizarGrupoLibro'
 )
BEGIN
   DROP PROCEDURE sp_ActualizarGrupoLibro
END
GO
CREATE PROCEDURE sp_ActualizarGrupoLibro
    @idGrupoLibro INT,
    @descripcion NVARCHAR(100)
AS
BEGIN
    UPDATE [UNB_Q01].[dbo].[grupoLibro]
    SET [descripcion] = @descripcion
    WHERE [idGrupoLibro] = @idGrupoLibro;
END;