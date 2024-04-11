USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'libros'
 )
 BEGIN
     CREATE TABLE libros (
                          idLibro           INT IDENTITY (1,1),
                          nombre            VARCHAR(150),
                          autor             VARCHAR(40),
                          anioPublicacion   DATETIME,
                          grupoLibro        INT NOT NULL,
                          enStock           INT,
                          estado            INT,
                          tipoIdentificador INT,
                          idArea            INT NOT NULL,
                          CONSTRAINT pk_libros PRIMARY KEY (idLibro),
                          CONSTRAINT fk_librosgrupoLibro FOREIGN KEY (grupoLibro) REFERENCES grupoLibro(idGrupoLibro),
                          CONSTRAINT fk_librosAreatematica FOREIGN KEY (idArea) REFERENCES areaTematica (idArea)
                         )
END
GO