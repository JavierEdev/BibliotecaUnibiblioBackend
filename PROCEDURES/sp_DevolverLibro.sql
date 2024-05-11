USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_DevolverLibro'
 )
BEGIN
   DROP PROCEDURE sp_DevolverLibro
END
GO

CREATE PROCEDURE sp_DevolverLibro
@correoUsuario VARCHAR(MAX),
@idLibro INT
AS
BEGIN
DECLARE @idUsuario INT = (SELECT TOP 1 idUsuario FROM usuarios WHERE correoElectronico = @correoUsuario)
DECLARE @guidDevolucion VARCHAR(MAX) = (SELECT TOP 1 m.guidRegistroDetalle
                                          FROM registroMaestro m
                                               INNER JOIN registroDetalle d ON m.guidRegistroDetalle = d.guidRegistroDetalle
                                         WHERE m.idUsuario = @idUsuario
                                           AND d.idLibro = @idLibro)

print @idUsuario
print  @guidDevolucion

    UPDATE registroMaestro
       SET estado = 2
     WHERE idUsuario = @idUsuario
     AND guidRegistroDetalle = @guidDevolucion

END