USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_SeleccionarGruposLibro'
 )
BEGIN
   DROP PROCEDURE sp_SeleccionarGruposLibro
END
GO
CREATE PROCEDURE sp_SeleccionarGruposLibro
AS
BEGIN
    SELECT [idGrupoLibro], [descripcion]
    FROM [UNB_Q01].[dbo].[grupoLibro];
END;