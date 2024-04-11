USE UNB_Q01
GO

IF NOT EXISTS
 (
     SELECT TOP 1 1
     FROM sysobjects
     WHERE type = 'U'
     AND name = 'roles'
 )
BEGIN
    CREATE TABLE roles (
                        idRol INT IDENTITY (1,1),
                        rol   VARCHAR(256),
                        CONSTRAINT pk_roles PRIMARY KEY CLUSTERED (idRol)
                       )
END
GO