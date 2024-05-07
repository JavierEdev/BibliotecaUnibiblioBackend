USE UNB_Q01
GO

IF EXISTS
(
    SELECT TOP 1 1
    FROM sysobjects
    WHERE type = 'P'
    AND name = 'sp_ObtenerAreaTematica'
)
BEGIN
    DROP PROCEDURE sp_ObtenerAreaTematica
END
GO

CREATE PROCEDURE sp_ObtenerAreaTematica
    @idArea INT
AS
BEGIN
    SELECT
        [idArea],
        [descripcion]
    FROM
        [UNB_Q01].[dbo].[areaTematica]
    WHERE
        [idArea] = @idArea
END;
