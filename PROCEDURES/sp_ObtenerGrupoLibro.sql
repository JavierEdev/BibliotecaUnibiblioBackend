USE UNB_Q01
GO

IF EXISTS
(
    SELECT TOP 1 1
    FROM sysobjects
    WHERE type = 'P'
    AND name = 'sp_ObtenerGrupoLibro'
)
BEGIN
    DROP PROCEDURE sp_ObtenerGrupoLibro
END
GO

CREATE PROCEDURE sp_ObtenerGrupoLibro
    @idGrupoLibro INT
AS
BEGIN
    SELECT
        [idGrupoLibro],
        [descripcion]
    FROM
        [UNB_Q01].[dbo].[grupoLibro]
    WHERE
        [idGrupoLibro] = @idGrupoLibro
END;