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
    SELECT CONCAT(primerNombre,' ',primerApellido) AS Nombre,
           dpi AS DPI,
           correoElectronico AS correo,
           direccion AS direccion
      FROM usuarios
END