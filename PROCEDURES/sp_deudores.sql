USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_deudores'
 )
BEGIN
   DROP PROCEDURE sp_deudores
END
GO

CREATE PROCEDURE sp_deudores
AS
BEGIN
    SELECT 
        u.primerNombre AS PrimerNombreUsuario,
        u.segundoNombre AS SegundoNombreUsuario,
        u.primerApellido AS PrimerApellidoUsuario,
        u.segundoApellido AS SegundoApellidoUsuario,
        u.DPI AS DPIUsuario,
        u.telefono AS TelefonoUsuario,
        u.correoElectronico AS CorreoElectronicoUsuario,
        u.direccion AS DireccionUsuario,
        l.nombre AS NombreLibro,
        l.enStock AS EnStockLibro,
        rm.fechaInicioPrestamo AS FechaInicioPrestamo,
        rm.fechaDevolucionPrestamo AS FechaDevolucionPrestamo
    FROM 
        dbo.usuarios u
    INNER JOIN 
        dbo.registroMaestro rm ON u.idUsuario = rm.idUsuario
    INNER JOIN 
        dbo.registroDetalle rd ON rm.guidRegistroDetalle = rd.guidRegistroDetalle
    INNER JOIN 
        dbo.libros l ON rd.idLibro = l.idLibro
    WHERE 
        u.estatus = '2';
END 
