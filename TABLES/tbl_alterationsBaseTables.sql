--Alteracion usuarios
ALTER TABLE usuarios ADD contrasena VARCHAR(500)
ALTER TABLE usuarios ADD fechaCrea DATETIME
ALTER TABLE usuarios ALTER COLUMN DPI VARCHAR(MAX)
ALTER TABLE usuarios ALTER COLUMN telefono VARCHAR(MAX)

--Alteraciones Registro Maestro
ALTER TABLE registroMaestro ADD fechaCrea DATETIME

--Alteraciones Registro Detalle
ALTER TABLE registroDetalle ADD fechaCrea DATETIME

--Alteraciones Suspensiones
ALTER TABLE suspensiones ADD fechaCrea DATETIME
ALTER TABLE suspensiones ADD idUsuario INT