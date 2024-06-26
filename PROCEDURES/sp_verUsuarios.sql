USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_verUsuarios'
 )
BEGIN
   DROP PROCEDURE sp_verUsuarios
END
GO
CREATE PROCEDURE sp_verUsuarios
AS
BEGIN
    SELECT u.idUsuario AS Id,
           CONCAT(primerNombre,' ',primerApellido) AS Nombre,
           dpi AS DPI,
           correoElectronico AS correo,
           direccion AS direccion
      FROM usuarios u
           LEFT JOIN suspensiones s ON u.idUsuario = s.idUsuario
     WHERE u.estatus NOT IN (2)
       AND NOT EXISTS (
                       SELECT TOP 1 1
                         FROM suspensiones s2
                        WHERE u.idUsuario = s2.idUsuario
                          AND s2.estatus = 1
                      )
      AND u.idRol IN (2,3)
END