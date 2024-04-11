USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'registroDetalle'
 )
 BEGIN
     CREATE TABLE registroDetalle (
        idDetalle INT IDENTITY (1,1),
        guidRegistroDetalle VARCHAR(300) NOT NULL,
        idLibro INT NOT NULL,
        CONSTRAINT pk_registroDetalle PRIMARY KEY (idDetalle),
        CONSTRAINT fk_registroDetalleGUID FOREIGN KEY (guidRegistroDetalle) REFERENCES registroMaestro (guidRegistroDetalle),
        CONSTRAINT fk_regisotroDetalleLibro FOREIGN KEY (idLibro) REFERENCES libros(idLibro)
                                  )
END
GO