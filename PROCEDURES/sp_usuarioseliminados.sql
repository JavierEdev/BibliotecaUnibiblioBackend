USE UNB_Q01
GO

IF EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE type = 'P' AND name = 'sp_usuarioseliminados'
)
BEGIN
    DROP PROCEDURE sp_usuarioseliminados
END
GO

CREATE PROCEDURE sp_usuarioseliminados
AS
BEGIN
    SELECT 
        primerNombre AS PrimerNombreUsuario,
        segundoNombre AS SegundoNombreUsuario,
        primerApellido AS PrimerApellidoUsuario,
        segundoApellido AS SegundoApellidoUsuario,
        DPI AS DPIUsuario,
        telefono AS TelefonoUsuario,
        correoElectronico AS CorreoElectronicoUsuario,
        direccion AS DireccionUsuario
    FROM 
        usuarios
    WHERE 
        estatus = '2';
END
