USE [UNB_Q01]
GO

INSERT INTO areaTematica (descripcion, estado) 
VALUES 
('Generalidades', 1),--0
('Bibliografía', 1), --1
('Bibliografía y Ciencias de la Información', 1),--2
('Enciclopedias Generales', 1),--3
('Sin Asignar', 1),--4
('Publicaciones en serie generales', 1),--5
('Organizaciones generales, museología', 1),--6
('Medios noticiosos, periodismo', 1),--7
('Colecciones generales', 1),--8
('Manuscritos & libros raros', 1),--9
('Filosofía & Psicología', 1),--10
('Metafísica', 1),--11
('Epistemología, causalidad', 1),--12
('Fenómenos paranormales', 1),--13
('Escuelas filosóficas', 1),--14
('filo', 1),--15
('Lógica', 1),--16
('Etica', 1),--17
('Filosofía antigua', 1),--18
('Filosofía moderna occidental', 1),--19
('Religión', 1),--20
('Teología natular', 1),--21
('La Biblia', 1),--22
('Teología cristiana', 1),--23
('Moral cristiana & teología piadosa', 1),--24
('Ordenes cristianas & iglesia local', 1),--25
('Teología social cristiana', 1),--26
('Historia de la iglesia cristiana', 1),--27
('Denominaciones & sectas cristianas', 1),--28
('Otras & religión comparada', 1),--29
('Ciencias Sociales', 1),--30
('Estadística general', 1),--31
('Ciencias políticas', 1),--32
('Enocomía', 1),--33
('Derecho', 1),--34
('Adinistación publica', 1),--35
('Servicios Sociales & Asociaciones', 1),--36
('Educación', 1),--37
('Comercio, Comunicaciones', 1),--38
('Costumbres, etiqueta, folclore', 1),--39
('Lenguas', 1),--40
('Linguística', 1),--41
('Ingles e ingles antiguio', 1),--42
('Lenguas germánicas Alemán', 1),--43
('Lenguas romances Frances', 1),--44
('Italiano rumano', 1),--45
('Lenguas españolas y portuguesas', 1),--46
('Lenguas itálicas Latín', 1),--47
('Lenguas helénicas', 1),--48
('Otras lenguas', 1),--49
('Ciencias naturales & Matemáticas', 1),--50
('Matemáticas', 1),--51
('Astronomía & ciencias afines', 1),--52
('Física', 1),--53
('Química & ciencias afines', 1),--54
('Ciencias de la tierra', 1),--55
('Paleontología Paleozzología', 1),--56
('Ciencias de la vida', 1),--57
('Ciencias Botánicas', 1),--58
('Ciencias zoológicas', 1),--59
('Tecnología (Ciencias aplicadas)', 1),--60
('Ciencias medicas Medicina', 1),--61
('Ingeniería & operaciones a fines', 1),--62
('Agricultura', 1),--63
('Econocía domestica', 1),--64
('Informática', 1),--65
('Ingeniería química', 1),--66
('Manufactura', 1),--67
('Manufactura para usos específicos', 1),--68
('Construcción', 1),--69
('Las artes', 1),--70
('Urbanismo & arte del paisaje', 1),--71
('Arquitectura del paisaje', 1),--72
('Artes plásticas Escultura', 1),--73
('Dibujo & artes decorativas', 1),--74
('Pintura & pinturas', 1),--75
('Artes gráficas artes de grabar', 1),--76
('Fotografía & fotografías', 1),--77
('Música', 1),--78
('Artes recreativas & de la actuación', 1),--79
('Literatura y retórica', 1),--80
('Literatura norteamericana en inglés', 1),--81
('Literaturas inglesa e inglesa antigua', 1),--82
('Literaturas de las lenguas germánicas', 1),--83
('Literaturas de las lenguas romances', 1),--84
('Literaturas italianas, rumana', 1),--85
('Literaturas españolas & portuguesa', 1),--86
('Literaturas itálicas Literaturas latina', 1),--87
('Literaturas helénicas Literaturas griega', 1),--88
('Literatura de otras lenguas', 1),--89
('Geografía e Historia', 1),--90
('Geografía y viajes', 1),--91
('Bibliografia, genealogía, emblemas', 1),--92
('Historia del mundo antiguo', 1),--93
('Historia general de europa', 1),--94
('Historia general Asia Extremo Oriente', 1),--95
('Historia Africa', 1),--96
('Historia general América del Norte', 1),--97
('Historia general América del Sur', 1),--98
('Historia general de otras áreas', 1);--99


INSERT INTO grupoLibro (descripcion,estado) VALUES ('unicen',1);
INSERT INTO grupoLibro (descripcion,estado) VALUES ('unirev',1);
INSERT INTO grupoLibro (descripcion,estado) VALUES ('unitesis',1);

INSERT INTO tiposPrestamo (descripcion)
VALUES 
('Préstamo normal: una semana'),
('Préstamo nocturno'),
('Préstamo fin de semana'),
('Préstamo permanente: un año'),
('Prestamo por día');


INSERT INTO libros (nombre, autor, anioPublicacion, grupoLibro, enStock, estado, tipoIdentificador, idArea) 
VALUES 
('Historia del Mundo Antiguo: Perspectivas y Reflexiones', 'María Gómez', 2020, 1, 5, 1, 1, 90),
('Ciencia Política Contemporánea', 'Carlos Martínez', 2019, 2, 8, 1, 1, 30),
('Ingeniería Química: Principios y Aplicaciones', 'Laura Fernández', 2021, 3, 10, 1, 1, 60),
('Metodología de la Investigación Científica', 'Ana Rodríguez', 2020, 2, 6, 1, 1, 20),
('Estudio de Mercado: Técnicas y Aplicaciones', 'Pedro Gutiérrez', 2018, 3, 3, 1, 1, 60),
('Historia General de Europa', 'Luis Martínez', 2017, 1, 9, 1, 1, 90),
('Matemáticas Básicas para Ingeniería', 'Roberto Sánchez', 2019, 2, 4, 1, 1, 50),
('El Arte de la Fotografía: Técnicas Avanzadas', 'María López', 2020, 3, 2, 1, 1, 70),
('Literatura Española del Siglo de Oro', 'Elena García', 2016, 1, 2, 1, 1, 80),
('El Jardín de las Delicias', 'Fernando Pérez', 2017, 2, 10, 1, 1, 10), 
('El Origen de las Especies', 'Charles Darwin', 1859, 3, 5, 1, 1, 50), 
('El Arte de la Guerra', 'Sun Tzu', 500, 1, 9, 1, 1, 30), 
('Cien Años de Soledad', 'Gabriel García Márquez', 1967, 2, 3, 1, 1, 80), 
('El Código Da Vinci', 'Dan Brown', 2003, 3, 8, 1, 1, 90), 
('Breve Historia del Tiempo', 'Stephen Hawking', 1988, 1, 4, 1, 1, 50), 
('1984', 'George Orwell', 1949, 2, 6, 1, 1, 90), 
('El Principito', 'Antoine de Saint-Exupéry', 1943, 3, 7, 1, 1, 70), 
('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 1, 10, 1, 1, 80), 
('La Odisea', 'Homero', 800, 2, 4, 1, 1, 80),
('La Divina Comedia', 'Dante Alighieri', 1320, 3, 6, 1, 1, 80), 
('Orgullo y Prejuicio', 'Jane Austen', 1813, 1, 8, 1, 1, 80), 
('Moby Dick', 'Herman Melville', 1851, 2, 2, 1, 1, 80), 
('Drácula', 'Bram Stoker', 1897, 3, 9, 1, 1, 80), 
('El Gran Gatsby', 'F. Scott Fitzgerald', 1925, 1, 4, 1, 1, 80),
('Crimen y Castigo', 'Fyodor Dostoevsky', 1866, 2, 7, 1, 1, 80), 
('Guerra y Paz', 'Leo Tolstoy', 1869, 3, 5, 1, 1, 90), 
('Ulises', 'James Joyce', 1922, 1, 8, 1, 1, 80), 
('La Metamorfosis', 'Franz Kafka', 1915, 2, 3, 1, 1, 80), 
('1984', 'George Orwell', 1949, 3, 6, 1, 1, 90), 
('Los Pilares de la Tierra', 'Ken Follett', 1989, 1, 7, 1, 1, 70), 
('El Señor de los Anillos', 'J.R.R. Tolkien', 1954, 2, 9, 1, 1, 80), 
('Cien Años de Soledad', 'Gabriel García Márquez', 1967, 3, 3, 1, 1, 90), 
('El Alquimista', 'Paulo Coelho', 1988, 1, 4, 1, 1, 100), 
('El Código Da Vinci', 'Dan Brown', 2003, 2, 8, 1, 1, 80), 
('Harry Potter y la Piedra Filosofal', 'J.K. Rowling', 1997, 3, 6, 1, 1, 70), 
('El Perfume', 'Patrick Süskind', 1985, 1, 7, 1, 1, 70),
('El Hobbit', 'J.R.R. Tolkien', 1937, 2, 3, 1, 1, 80), 
('El Extranjero', 'Albert Camus', 1942, 1, 5, 1, 1, 80), 
('El Principito', 'Antoine de Saint-Exupéry', 1943, 3, 9, 1, 1, 80), 
('Crónica de una Muerte Anunciada', 'Gabriel García Márquez', 1981, 1, 6, 1, 1, 90), 
('El Lobo Estepario', 'Hermann Hesse', 1927, 2, 7, 1, 1, 80), 
('Matar un Ruiseñor', 'Harper Lee', 1960, 3, 10, 1, 1, 80), 
('Anna Karenina', 'Leo Tolstoy', 1877, 1, 2, 1, 1, 90), 
('La Sombra del Viento', 'Carlos Ruiz Zafón', 2001, 2, 5, 1, 1, 80), 
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

