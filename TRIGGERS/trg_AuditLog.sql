CREATE TRIGGER trg_AuditLog
ON usuarios
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON
    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO logAuditoriaUsuarios (NombreTabla, Operacion, DataNueva,usuarioModifica)
        SELECT 
            'logAuditoria',
            'INSERT',
            CONVERT(NVARCHAR(MAX), (SELECT * FROM inserted FOR JSON PATH)),
            SYSTEM_USER
        FROM inserted
    END
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO logAuditoriaUsuarios(NombreTabla, Operacion, DataVieja,usuarioModifica)
        SELECT 
            'logAuditoria',
            'DELETE',
            CONVERT(NVARCHAR(MAX), (SELECT * FROM deleted FOR JSON PATH)),
            SYSTEM_USER
        FROM deleted
    END
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO logAuditoriaUsuarios (NombreTabla, Operacion, DataVieja, DataNueva,usuarioModifica)
        SELECT 
            'logAuditoria',
            'UPDATE',
            CONVERT(NVARCHAR(MAX), (SELECT * FROM deleted FOR JSON PATH)),
            CONVERT(NVARCHAR(MAX), (SELECT * FROM inserted FOR JSON PATH)),
            SYSTEM_USER
        FROM deleted
        INNER JOIN inserted ON deleted.idUsuario = inserted.idUsuario -- Adjust the join condition to your primary key
    END
END
