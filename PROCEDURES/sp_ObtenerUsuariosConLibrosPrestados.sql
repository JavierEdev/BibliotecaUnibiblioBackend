USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_ObtenerUsuariosConLibrosPrestados'
 )
BEGIN
   DROP PROCEDURE sp_ObtenerUsuariosConLibrosPrestados
END
GO

CREATE PROCEDURE sp_ObtenerUsuariosConLibrosPrestados
AS
BEGIN
	SELECT 
		u.primerNombre + ' ' + u.primerApellido  AS NombreUsuario,
        l.nombre AS LibroPrestado,
        rd.fechaCrea AS FechaCreacionDetalle,
        rm.fechaDevolucionPrestamo AS FechaVencimientoPrestamo,
        rm.estado AS EstadoPrestamo
    FROM 
        [UNB_Q01].[dbo].[registroMaestro] rm
    JOIN 
        [UNB_Q01].[dbo].[registroDetalle] rd ON rm.guidRegistroDetalle = rd.guidRegistroDetalle
    JOIN 
        [UNB_Q01].[dbo].[libros] l ON rd.idLibro = l.idLibro
    JOIN 
        [UNB_Q01].[dbo].[usuarios] u ON rm.idUsuario = u.idUsuario;
END


       

