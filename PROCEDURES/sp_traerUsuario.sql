USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_traerUsuario'
 )
BEGIN
   DROP PROCEDURE sp_traerUsuario
END
GO

CREATE PROCEDURE sp_traerUsuario
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
    END
    IF (@usuario = 'admin' AND @password = 'admin')
    BEGIN
        SELECT 'admin' AS usuario,
               'AGEAZABtAGkAbg==' AS password
    END
    ELSE
       BEGIN
       SELECT 'noHay' AS usuario,
              'AG4AbwBFAHgAaQBzAHQAZQ==' AS password
    END
END