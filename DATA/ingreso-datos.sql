USE [UNB_Q01]
GO

INSERT INTO areaTematica (descripcion, estado) 
VALUES 
('Generalidades', 1),--0
('Bibliograf�a', 1), --1
('Bibliograf�a y Ciencias de la Informaci�n', 1),--2
('Enciclopedias Generales', 1),--3
('Sin Asignar', 1),--4
('Publicaciones en serie generales', 1),--5
('Organizaciones generales, museolog�a', 1),--6
('Medios noticiosos, periodismo', 1),--7
('Colecciones generales', 1),--8
('Manuscritos & libros raros', 1),--9
('Filosof�a & Psicolog�a', 1),--10
('Metaf�sica', 1),--11
('Epistemolog�a, causalidad', 1),--12
('Fen�menos paranormales', 1),--13
('Escuelas filos�ficas', 1),--14
('filo', 1),--15
('L�gica', 1),--16
('Etica', 1),--17
('Filosof�a antigua', 1),--18
('Filosof�a moderna occidental', 1),--19
('Religi�n', 1),--20
('Teolog�a natular', 1),--21
('La Biblia', 1),--22
('Teolog�a cristiana', 1),--23
('Moral cristiana & teolog�a piadosa', 1),--24
('Ordenes cristianas & iglesia local', 1),--25
('Teolog�a social cristiana', 1),--26
('Historia de la iglesia cristiana', 1),--27
('Denominaciones & sectas cristianas', 1),--28
('Otras & religi�n comparada', 1),--29
('Ciencias Sociales', 1),--30
('Estad�stica general', 1),--31
('Ciencias pol�ticas', 1),--32
('Enocom�a', 1),--33
('Derecho', 1),--34
('Adinistaci�n publica', 1),--35
('Servicios Sociales & Asociaciones', 1),--36
('Educaci�n', 1),--37
('Comercio, Comunicaciones', 1),--38
('Costumbres, etiqueta, folclore', 1),--39
('Lenguas', 1),--40
('Lingu�stica', 1),--41
('Ingles e ingles antiguio', 1),--42
('Lenguas germ�nicas Alem�n', 1),--43
('Lenguas romances Frances', 1),--44
('Italiano rumano', 1),--45
('Lenguas espa�olas y portuguesas', 1),--46
('Lenguas it�licas Lat�n', 1),--47
('Lenguas hel�nicas', 1),--48
('Otras lenguas', 1),--49
('Ciencias naturales & Matem�ticas', 1),--50
('Matem�ticas', 1),--51
('Astronom�a & ciencias afines', 1),--52
('F�sica', 1),--53
('Qu�mica & ciencias afines', 1),--54
('Ciencias de la tierra', 1),--55
('Paleontolog�a Paleozzolog�a', 1),--56
('Ciencias de la vida', 1),--57
('Ciencias Bot�nicas', 1),--58
('Ciencias zool�gicas', 1),--59
('Tecnolog�a (Ciencias aplicadas)', 1),--60
('Ciencias medicas Medicina', 1),--61
('Ingenier�a & operaciones a fines', 1),--62
('Agricultura', 1),--63
('Econoc�a domestica', 1),--64
('Inform�tica', 1),--65
('Ingenier�a qu�mica', 1),--66
('Manufactura', 1),--67
('Manufactura para usos espec�ficos', 1),--68
('Construcci�n', 1),--69
('Las artes', 1),--70
('Urbanismo & arte del paisaje', 1),--71
('Arquitectura del paisaje', 1),--72
('Artes pl�sticas Escultura', 1),--73
('Dibujo & artes decorativas', 1),--74
('Pintura & pinturas', 1),--75
('Artes gr�ficas artes de grabar', 1),--76
('Fotograf�a & fotograf�as', 1),--77
('M�sica', 1),--78
('Artes recreativas & de la actuaci�n', 1),--79
('Literatura y ret�rica', 1),--80
('Literatura norteamericana en ingl�s', 1),--81
('Literaturas inglesa e inglesa antigua', 1),--82
('Literaturas de las lenguas germ�nicas', 1),--83
('Literaturas de las lenguas romances', 1),--84
('Literaturas italianas, rumana', 1),--85
('Literaturas espa�olas & portuguesa', 1),--86
('Literaturas it�licas Literaturas latina', 1),--87
('Literaturas hel�nicas Literaturas griega', 1),--88
('Literatura de otras lenguas', 1),--89
('Geograf�a e Historia', 1),--90
('Geograf�a y viajes', 1),--91
('Bibliografia, genealog�a, emblemas', 1),--92
('Historia del mundo antiguo', 1),--93
('Historia general de europa', 1),--94
('Historia general Asia Extremo Oriente', 1),--95
('Historia Africa', 1),--96
('Historia general Am�rica del Norte', 1),--97
('Historia general Am�rica del Sur', 1),--98
('Historia general de otras �reas', 1);--99


INSERT INTO grupoLibro (descripcion,estado) VALUES ('unicen',1);
INSERT INTO grupoLibro (descripcion,estado) VALUES ('unirev',1);
INSERT INTO grupoLibro (descripcion,estado) VALUES ('unitesis',1);

INSERT INTO tiposPrestamo (descripcion)
VALUES 
('Pr�stamo normal: una semana'),
('Pr�stamo nocturno'),
('Pr�stamo fin de semana'),
('Pr�stamo permanente: un a�o'),
('Prestamo por d�a');


INSERT INTO libros (nombre, autor, anioPublicacion, grupoLibro, enStock, estado, tipoIdentificador, idArea) 
VALUES 
('Historia del Mundo Antiguo: Perspectivas y Reflexiones', 'Mar�a G�mez', 2020, 1, 5, 1, 1, 90),
('Ciencia Pol�tica Contempor�nea', 'Carlos Mart�nez', 2019, 2, 8, 1, 1, 30),
('Ingenier�a Qu�mica: Principios y Aplicaciones', 'Laura Fern�ndez', 2021, 3, 10, 1, 1, 60),
('Metodolog�a de la Investigaci�n Cient�fica', 'Ana Rodr�guez', 2020, 2, 6, 1, 1, 20),
('Estudio de Mercado: T�cnicas y Aplicaciones', 'Pedro Guti�rrez', 2018, 3, 3, 1, 1, 60),
('Historia General de Europa', 'Luis Mart�nez', 2017, 1, 9, 1, 1, 90),
('Matem�ticas B�sicas para Ingenier�a', 'Roberto S�nchez', 2019, 2, 4, 1, 1, 50),
('El Arte de la Fotograf�a: T�cnicas Avanzadas', 'Mar�a L�pez', 2020, 3, 2, 1, 1, 70),
('Literatura Espa�ola del Siglo de Oro', 'Elena Garc�a', 2016, 1, 2, 1, 1, 80),
('El Jard�n de las Delicias', 'Fernando P�rez', 2017, 2, 10, 1, 1, 10), 
('El Origen de las Especies', 'Charles Darwin', 1859, 3, 5, 1, 1, 50), 
('El Arte de la Guerra', 'Sun Tzu', 500, 1, 9, 1, 1, 30), 
('Cien A�os de Soledad', 'Gabriel Garc�a M�rquez', 1967, 2, 3, 1, 1, 80), 
('El C�digo Da Vinci', 'Dan Brown', 2003, 3, 8, 1, 1, 90), 
('Breve Historia del Tiempo', 'Stephen Hawking', 1988, 1, 4, 1, 1, 50), 
('1984', 'George Orwell', 1949, 2, 6, 1, 1, 90), 
('El Principito', 'Antoine de Saint-Exup�ry', 1943, 3, 7, 1, 1, 70), 
('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 1, 10, 1, 1, 80), 
('La Odisea', 'Homero', 800, 2, 4, 1, 1, 80),
('La Divina Comedia', 'Dante Alighieri', 1320, 3, 6, 1, 1, 80), 
('Orgullo y Prejuicio', 'Jane Austen', 1813, 1, 8, 1, 1, 80), 
('Moby Dick', 'Herman Melville', 1851, 2, 2, 1, 1, 80), 
('Dr�cula', 'Bram Stoker', 1897, 3, 9, 1, 1, 80), 
('El Gran Gatsby', 'F. Scott Fitzgerald', 1925, 1, 4, 1, 1, 80),
('Crimen y Castigo', 'Fyodor Dostoevsky', 1866, 2, 7, 1, 1, 80), 
('Guerra y Paz', 'Leo Tolstoy', 1869, 3, 5, 1, 1, 90), 
('Ulises', 'James Joyce', 1922, 1, 8, 1, 1, 80), 
('La Metamorfosis', 'Franz Kafka', 1915, 2, 3, 1, 1, 80), 
('1984', 'George Orwell', 1949, 3, 6, 1, 1, 90), 
('Los Pilares de la Tierra', 'Ken Follett', 1989, 1, 7, 1, 1, 70), 
('El Se�or de los Anillos', 'J.R.R. Tolkien', 1954, 2, 9, 1, 1, 80), 
('Cien A�os de Soledad', 'Gabriel Garc�a M�rquez', 1967, 3, 3, 1, 1, 90), 
('El Alquimista', 'Paulo Coelho', 1988, 1, 4, 1, 1, 100), 
('El C�digo Da Vinci', 'Dan Brown', 2003, 2, 8, 1, 1, 80), 
('Harry Potter y la Piedra Filosofal', 'J.K. Rowling', 1997, 3, 6, 1, 1, 70), 
('El Perfume', 'Patrick S�skind', 1985, 1, 7, 1, 1, 70),
('El Hobbit', 'J.R.R. Tolkien', 1937, 2, 3, 1, 1, 80), 
('El Extranjero', 'Albert Camus', 1942, 1, 5, 1, 1, 80), 
('El Principito', 'Antoine de Saint-Exup�ry', 1943, 3, 9, 1, 1, 80), 
('Cr�nica de una Muerte Anunciada', 'Gabriel Garc�a M�rquez', 1981, 1, 6, 1, 1, 90), 
('El Lobo Estepario', 'Hermann Hesse', 1927, 2, 7, 1, 1, 80), 
('Matar un Ruise�or', 'Harper Lee', 1960, 3, 10, 1, 1, 80), 
('Anna Karenina', 'Leo Tolstoy', 1877, 1, 2, 1, 1, 90), 
('La Sombra del Viento', 'Carlos Ruiz Zaf�n', 2001, 2, 5, 1, 1, 80), 
('1984', 'George Orwell', 1949, 3, 4, 1, 1, 90), 
('El Nombre del Viento', 'Patrick Rothfuss', 2007, 1, 6, 1, 1, 80), 
('Los Juegos del Hambre', 'Suzanne Collins', 2008, 2, 9, 1, 1, 80), 
('El Clan del Oso Cavernario', 'Jean M. Auel', 1980, 3, 5, 1, 1, 50), 
('La Ciudad y los Perros', 'Mario Vargas Llosa', 1963, 1, 2, 1, 1, 80);


SET IDENTITY_INSERT roles ON;

INSERT INTO roles (idRol,rol)
VALUES (1,'admin')
INSERT INTO roles (idRol,rol)
VALUES (2,'Lector Estudiante')
INSERT INTO roles (idRol,rol)
VALUES (3,'Lector Terciario')
INSERT INTO roles (idRol,rol)
VALUES (4,'Catedratico')
INSERT INTO roles (idRol,rol)
VALUES (5,'Colaborador')

SET IDENTITY_INSERT roles OFF;

