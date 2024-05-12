use UNB_Q01
go
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

--Alteraciones Grupos
ALTER TABLE grupoLibro ADD estado INT

--Alteraciones Tematica
ALTER TABLE areaTematica ADD estado INT

--Eliminacion de PK
ALTER TABLE registroMaestro DROP CONSTRAINT fk_registroMaestroSuspensiones
ALTER TABLE suspensiones DROP CONSTRAINT pk_suspensiones