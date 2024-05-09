USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_SeleccionarAreasTematica'
 )
BEGIN
   DROP PROCEDURE sp_SeleccionarAreasTematica
END
GO
CREATE PROCEDURE sp_SeleccionarAreasTematica
AS
BEGIN
    SELECT [idArea], [descripcion]
    FROM [UNB_Q01].[dbo].[areaTematica]
    WHERE estado NOT IN (2)
END;
