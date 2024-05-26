CREATE TABLE logAuditoria (
   IdEntrada     INT IDENTITY(1,1) PRIMARY KEY,
   NombreTabla   NVARCHAR(100),
   Operacion     NVARCHAR(10),
   DataVieja     NVARCHAR(MAX),
   DataNueva     NVARCHAR(MAX),
   fechaOperacion DATETIME DEFAULT GETDATE(),
   usuarioModifica NVARCHAR(MAX)
)
GO