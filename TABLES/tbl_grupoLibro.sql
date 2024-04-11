USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'grupoLibro'
 )
 BEGIN
     CREATE TABLE grupoLibro (
                              idGrupoLibro INT IDENTITY (1,1),
                              descripcion  VARCHAR(256),
                              CONSTRAINT pk_grupoLibro PRIMARY KEY (idGrupoLibro)
                             )
END
GO