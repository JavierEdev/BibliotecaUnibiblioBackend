USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_obtenerNombreLibro'
 )
BEGIN
   DROP PROCEDURE sp_obtenerNombreLibro
END
GO

CREATE PROCEDURE sp_obtenerNombreLibro
@Id INT
AS
BEGIN
    SELECT idLibro AS Id,
           nombre AS nombreLibro,
           GETDATE() AS fechaEntrega
      FROM libros
     WHERE idLibro = @Id
END