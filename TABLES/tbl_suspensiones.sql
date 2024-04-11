USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'suspensiones'
 )
 BEGIN
     CREATE TABLE suspensiones (
                              idSuspension            INT IDENTITY (1,1),
                              motivoSuspension        VARCHAR(256),
                              fechaFinalizaSuspension DATETIME,
                              estatus                 INT -- Si es 1 es activo, si es 2 es inactivo
                              CONSTRAINT pk_suspensiones PRIMARY KEY (idSuspension)
                             )
END
GO