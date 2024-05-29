-- Crear inicios de sesión con autenticación de SQL Server
CREATE LOGIN adminLogin WITH PASSWORD = 'contrasenaSegura123';
CREATE LOGIN readOnlyLogin WITH PASSWORD = 'contrasenaSegura123';
CREATE LOGIN readWriteLogin WITH PASSWORD = 'contrasenaSegura123';

USE UNB_Q01;
GO

-- Crear usuarios de base de datos y mapearlos a los inicios de sesión
CREATE USER adminUser FOR LOGIN adminLogin;
CREATE USER readOnlyUser FOR LOGIN readOnlyLogin;
CREATE USER readWriteUser FOR LOGIN readWriteLogin;

-- Asignar roles a los usuarios creados
ALTER ROLE db_owner ADD MEMBER adminUser;
ALTER ROLE db_datareader ADD MEMBER readOnlyUser;
ALTER ROLE db_datareader ADD MEMBER readWriteUser;
ALTER ROLE db_datawriter ADD MEMBER readWriteUser;
