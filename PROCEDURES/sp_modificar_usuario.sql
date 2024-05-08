USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_modificar_usuario'
 )
BEGIN
   DROP PROCEDURE sp_modificar_usuario
END
GO
CREATE PROCEDURE sp_modificar_usuario
@id INT,
@primerNombre VARCHAR(MAX),
@primerApellido VARCHAR(MAX),
@telefono VARCHAR(MAX),
@direccion VARCHAR(MAX)
AS
BEGIN
UPDATE usuarios SET primerNombre = @primerNombre,
                    primerApellido = @primerApellido,
                    telefono = @telefono,
                    direccion = @direccion
 WHERE idUsuario = @id
END