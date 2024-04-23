USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_BuscarLibroPorNombre'
 )
BEGIN
   DROP PROCEDURE sp_BuscarLibroPorNombre
END
GO

CREATE PROCEDURE sp_BuscarLibroPorNombre
    @nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP (1000) [idLibro]
        ,[nombre]
        ,[autor]
        ,[anioPublicacion]
        ,[grupoLibro]
        ,[enStock]
        ,[estado]
        ,[tipoIdentificador]
        ,[idArea]
    FROM [UNB_Q01].[dbo].[libros]
    WHERE [nombre] = @nombre;
END;