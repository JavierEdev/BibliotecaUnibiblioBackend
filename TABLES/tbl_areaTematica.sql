USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'areaTematica'
 )
 BEGIN
     CREATE TABLE areaTematica (
                                 idArea      INT IDENTITY (0,10),
                                 descripcion VARCHAR(256),
                                 CONSTRAINT pk_areaTematica PRIMARY KEY (idArea)
                                )
END
GO