USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_registroUsuario'
 )
BEGIN
   DROP PROCEDURE sp_registroUsuario
END
GO

CREATE PROCEDURE sp_registroUsuario
@primerNombre    VARCHAR(100),
@segundoNombre   VARCHAR(100) = '',
@primerApellido  VARCHAR(100),
@segundoApellido VARCHAR(100),
@dpi             VARCHAR(50),
@telefono        VARCHAR(50) = '',
@correo          VARCHAR(100) = '',
@direccion       VARCHAR(100) = '',
@rol             INT,
@contrasena      VARCHAR(MAX)
AS
BEGIN

    IF(
       SELECT COUNT (*)
         FROM usuarios
        WHERE DPI = @dpi
          AND correoElectronico = @correo
          AND idRol = @rol
      ) = 0
    BEGIN
        INSERT INTO usuarios
        (
         primerNombre,
         segundoNombre,
         primerApellido,
         segundoApellido,
         DPI,
         telefono,
         correoElectronico,
         direccion,
         idRol,
         estatus,
         contrasena,
         fechaCrea
        )
        VALUES
        (
         @primerApellido,
         @segundoNombre,
         @primerApellido,
         @segundoApellido,
         @dpi,
         @telefono,
         @correo,
         @direccion,
         @rol,
         1,
         @contrasena,
         GETDATE()
        )
    END
END