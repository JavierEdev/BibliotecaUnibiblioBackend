USE UNB_Q01
GO

IF EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'P'
     AND name = 'sp_suspender_usuario'
 )
BEGIN
   DROP PROCEDURE sp_suspender_usuario
END
GO
CREATE PROCEDURE sp_suspender_usuario
@id INT,
@fechaCrea DATETIME,
@motivoSuspension VARCHAR(MAX)
AS
BEGIN
IF (SELECT COUNT(*) FROM suspensiones WHERE idUsuario = @id AND estatus = 1) < 1
BEGIN
    INSERT INTO suspensiones
                (
                 motivoSuspension,
                 fechaFinalizaSuspension,
                 estatus,
                 fechaCrea,
                 idUsuario
                )
                VALUES
                (
                 @motivoSuspension,
                 @fechaCrea,
                 1,
                 GETDATE(),
                 @id
                )
  END
END