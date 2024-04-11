USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'tiposPrestamo'
 )
 BEGIN
     CREATE TABLE tiposPrestamo (
                                 idPrestamo  INT IDENTITY (1,1),
                                 descripcion VARCHAR(256),
                                 CONSTRAINT pk_tiposPrestamo PRIMARY KEY (idPrestamo)
                                )
END
GO