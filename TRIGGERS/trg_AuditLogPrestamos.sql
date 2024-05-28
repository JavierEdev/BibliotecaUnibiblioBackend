use UNB_Q01
GO
CREATE TRIGGER trg_AuditLogPrestamos
ON registroMaestro
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON
    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO logAuditoriaLibros (NombreTabla, Operacion, DataNueva,usuarioModifica)
        SELECT 
            'registroMaestro',
            'INSERT',
            CONVERT(NVARCHAR(MAX), (SELECT * FROM inserted FOR JSON PATH)),
            SYSTEM_USER
        FROM inserted
    END
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO logAuditoriaLibros(NombreTabla, Operacion, DataVieja,usuarioModifica)
        SELECT 
            'registroMaestro',
            'DELETE',
            CONVERT(NVARCHAR(MAX), (SELECT * FROM deleted FOR JSON PATH)),
            SYSTEM_USER
        FROM deleted
    END
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO logAuditoriaLibros (NombreTabla, Operacion, DataVieja, DataNueva,usuarioModifica)
        SELECT 
            'registroMaestro',
            'UPDATE',
            CONVERT(NVARCHAR(MAX), (SELECT * FROM deleted FOR JSON PATH)),
            CONVERT(NVARCHAR(MAX), (SELECT * FROM inserted FOR JSON PATH)),
            SYSTEM_USER
        FROM deleted
        INNER JOIN inserted ON deleted.idUsuario = inserted.idUsuario -- Adjust the join condition to your primary key
    END
END
