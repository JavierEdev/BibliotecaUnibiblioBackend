USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'registroMaestro'
 )
 BEGIN
     CREATE TABLE registroMaestro (
        idRegistro              INT IDENTITY (1,1),
        idUsuario               INT NOT NULL,
        guidRegistroDetalle     VARCHAR(300) UNIQUE NOT NULL,
        fechaInicioPrestamo     DATETIME,
        fechaDevolucionPrestamo DATETIME,
        idPrestamo              INT,
        estado                  INT,
        idSuspension            INT NOT NULL,
        CONSTRAINT pk_registroMaestro PRIMARY KEY (idRegistro),
        CONSTRAINT fk_registroMaestroIdUsuario FOREIGN KEY (idUsuario) REFERENCES usuarios (idUsuario),
        CONSTRAINT fk_registroMaestroSuspensiones FOREIGN KEY (idSuspension) REFERENCES suspensiones(idSuspension)
                                  )
END
GO