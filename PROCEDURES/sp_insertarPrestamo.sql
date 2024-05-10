USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_insertarPrestamo'
 )
BEGIN
   DROP PROCEDURE sp_insertarPrestamo
END
GO

CREATE PROCEDURE sp_insertarPrestamo
@correoUsuario VARCHAR(MAX),
@fechaDevolucion DATETIME,
@tipoPrestamo INT,
@idLibro INT
AS
BEGIN
DECLARE @idUsuario INT = (SELECT idUsuario FROM usuarios WHERE @correoUsuario = correoElectronico)
DECLARE @nuevoEncabezado UNIQUEIDENTIFIER = NEWID()

INSERT INTO registroMaestro
(
 idUsuario,
 guidRegistroDetalle,
 fechaInicioPrestamo,
 fechaDevolucionPrestamo,
 idPrestamo,
 estado,
 idSuspension,
 fechaCrea
)
VALUES
(
 @idUsuario,
 @nuevoEncabezado,
 GETDATE(),
 @fechaDevolucion,
 @tipoPrestamo,
 1,
 0,
 GETDATE()
)

INSERT INTO registroDetalle
(
guidRegistroDetalle,
idLibro,
fechaCrea
)
VALUES
(
 @nuevoEncabezado,
 @idLibro,
 GETDATE()
)
END