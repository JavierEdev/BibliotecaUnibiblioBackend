USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_ObtenerLibro'
 )
BEGIN
   DROP PROCEDURE sp_ObtenerLibro
END
GO
CREATE PROCEDURE sp_ObtenerLibro
@idlibro INT
AS
BEGIN
	SELECT
	 [idLibro],
     [nombre],
     [autor],
     [anioPublicacion],
     [idArea]
     [grupoLibro],
     [enStock],
     [estado],
     [tipoIdentificador],
	 [idArea]
	FROM [UNB_Q01].[dbo].[libros]
	WHERE idLibro = @idlibro
END