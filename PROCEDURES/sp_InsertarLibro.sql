USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_InsertarLibro'
 )
BEGIN
   DROP PROCEDURE sp_InsertarLibro
END
GO
CREATE PROCEDURE sp_InsertarLibro
    @nombre NVARCHAR(100),
    @autor NVARCHAR(100),
    @anioPublicacion INT,
    @grupoLibro INT,
    @enStock INT,
    @estado INT,
    @tipoIdentificador INT,
    @idArea INT
AS
BEGIN
    INSERT INTO [UNB_Q01].[dbo].[libros] (
        [nombre],
        [autor],
        [anioPublicacion],
        [grupoLibro],
        [enStock],
        [estado],
        [tipoIdentificador],
        [idArea]
    ) VALUES (
        @nombre,
        @autor,
        @anioPublicacion,
        @grupoLibro,
        @enStock,
        @estado,
        @tipoIdentificador,
        @idArea
    );
END;
