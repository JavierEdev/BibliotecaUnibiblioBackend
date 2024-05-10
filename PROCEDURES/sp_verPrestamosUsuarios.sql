USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_verPrestamosUsuarios'
 )
BEGIN
   DROP PROCEDURE sp_verPrestamosUsuarios
END
GO

CREATE PROCEDURE sp_verPrestamosUsuarios
AS
BEGIN
        SELECT d.idLibro AS Id,
               l.nombre AS Nombre,
               m.fechaCrea AS fechaCreacion,
               m.fechaDevolucionPrestamo AS fechaFinalizacion,
               u.correoElectronico AS correo
          FROM registroMaestro m
               INNER JOIN usuarios u ON m.idUsuario = u.idUsuario
               INNER JOIN registroDetalle d ON d.guidRegistroDetalle = m.guidRegistroDetalle
               INNER JOIN libros l ON d.idLibro = l.idLibro
         WHERE m.estado NOT IN (2)
END