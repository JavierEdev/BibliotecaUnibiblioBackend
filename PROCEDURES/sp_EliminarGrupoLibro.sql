	USE UNB_Q01
	GO

	IF EXISTS
	 (
		 SELECT TOP 1 1
		 FROM sysobjects
		 WHERE type = 'P'
		 AND name = 'sp_EliminarGrupoLibro'
	 )
	BEGIN
	   DROP PROCEDURE sp_EliminarGrupoLibro
	END
	GO

CREATE PROCEDURE sp_EliminarGrupoLibro
    @idGrupoLibro INT
AS
BEGIN
    UPDATE grupoLibro SET estado = 2
    WHERE [idGrupoLibro] = @idGrupoLibro;
END;