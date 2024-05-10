USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_obtenerNombreLibroPrestamo'
 )
BEGIN
   DROP PROCEDURE sp_obtenerNombreLibroPrestamo
END
GO

CREATE PROCEDURE sp_obtenerNombreLibroPrestamo
@Id INT,
@usuario VARCHAR(MAX)
AS
BEGIN
DECLARE @idUsuario INT = (SELECT TOP 1 idUsuario FROM usuarios WHERE correoElectronico = @usuario)

    SELECT l.idLibro AS Id,
           l.nombre AS nombreLibro,
           @usuario AS correo
      FROM registroMaestro r
           INNER JOIN registroDetalle d ON r.guidRegistroDetalle = d.guidRegistroDetalle
           INNER JOIN libros l ON d.idLibro = l.idLibro
     WHERE l.idLibro = @Id
       AND r.idUsuario = @idUsuario
END