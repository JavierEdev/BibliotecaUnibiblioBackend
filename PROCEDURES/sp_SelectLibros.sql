USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_SelectLibros'
 )
BEGIN
   DROP PROCEDURE sp_SelectLibros
END
GO

CREATE PROCEDURE sp_SelectLibros
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        [idLibro],
        [nombre],
        [autor],
        [anioPublicacion],
        [grupoLibro],
        [enStock],
        [estado],
        [tipoIdentificador],
        [idArea]
    FROM 
        [UNB_Q01].[dbo].[libros];
END;
