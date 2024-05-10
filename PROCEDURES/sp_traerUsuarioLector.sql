USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_traerUsuarioLector'
 )
BEGIN
   DROP PROCEDURE sp_traerUsuarioLector
END
GO

CREATE PROCEDURE sp_traerUsuarioLector
@usuario VARCHAR(MAX) = '',
@password VARCHAR(MAX) = ''
AS
BEGIN
    IF (SELECT COUNT(*) FROM usuarios WHERE correoElectronico = @usuario) > 0
    BEGIN
        SELECT correoElectronico AS usuario,
               contrasena AS password
          FROM usuarios
        WHERE correoElectronico = @usuario
          AND idRol IN (2,3,4)
    END
END