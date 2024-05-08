USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_ModificarLibro'
 )
BEGIN
   DROP PROCEDURE sp_ModificarLibro
END
GO
CREATE PROCEDURE sp_ModificarLibro
    @idLibro INT,
    @nombre NVARCHAR(100),
    @autor NVARCHAR(100),
    @anioPublicacion DATETIME,
    @grupoLibro INT,
    @enStock INT,
    @estado INT,
    @tipoIdentificador INT,
    @idArea INT
AS
BEGIN
    UPDATE [UNB_Q01].[dbo].[libros]
    SET
        [nombre] = @nombre,
        [autor] = @autor,
        [anioPublicacion] = @anioPublicacion,
        [grupoLibro] = @grupoLibro,
        [enStock] = @enStock,
        [estado] = @estado,
        [tipoIdentificador] = @tipoIdentificador,
        [idArea] = @idArea
    WHERE
        [idLibro] = @idLibro;
END;