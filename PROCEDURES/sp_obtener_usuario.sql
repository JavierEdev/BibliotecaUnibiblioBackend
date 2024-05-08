USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_obtener_usuario'
 )
BEGIN
   DROP PROCEDURE sp_obtener_usuario
END
GO
CREATE PROCEDURE sp_obtener_usuario
@id INT
AS
BEGIN
    SELECT u.idUsuario AS id,
    primerNombre,
    primerApellido,
    telefono,
    direccion,
    s.fechaFinalizaSuspension
    FROM usuarios u
         LEFT JOIN suspensiones s ON u.idUsuario = s.idUsuario
    WHERE u.idUsuario = @id
END