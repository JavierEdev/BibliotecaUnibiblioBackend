USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'usuarios'
 )
 BEGIN
     CREATE TABLE usuarios (
                            idUsuario         INT IDENTITY (1,1),
                            primerNombre      VARCHAR(60),
                            segundoNombre     VARCHAR(60),
                            primerApellido    VARCHAR(60),
                            segundoApellido   VARCHAR(60),
                            DPI               INT,
                            telefono          INT,
                            correoElectronico VARCHAR(100),
                            direccion         VARCHAR(100),
                            idRol             INT NOT NULL,
                            estatus           INT,
                            CONSTRAINT pk_usuarios PRIMARY KEY (idUsuario),
                            CONSTRAINT fk_usuarioRol FOREIGN KEY (idRol) REFERENCES roles (idRol)
                           )
END
GO