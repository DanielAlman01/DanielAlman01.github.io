
CREATE DATABASE AEONTECHNOLOGY

USE AEONTECHNOLOGY

CREATE TABLE Secciones
(
	SecionID varchar(20) 
		constraint Usuario_ID_pk primary key,
)

CREATE TABLE Contenido
(
	imagen varchar(600),
	titulo varchar(100),
	parrafo text,
	SecionID varchar(20) 
		constraint Contenido_ID_fk foreign key (SecionID)
			references Secciones (SecionID)
)

select * from Contenido

-- Inserts para la tabla Seccion
INSERT INTO Secciones (SecionID) VALUES 
  ('parte-seccion-1'),
  ('parte-seccion-2'),
  ('parte-seccion-3'),
  ('parte-seccion-4'),
  ('parte-seccion-5'),
  ('parte-seccion-6')


-- Inserts para la tabla Contenido
INSERT INTO Contenido (imagen, titulo, parrafo, SecionID) 
VALUES ('https://www.eltiempo.com/files/image_1200_680/uploads/2019/12/07/5dec47012d257.jpeg','Aeon Technology', 
'Somos un compañia dedicada a la creacion de paginas web', 'parte-seccion-1')

INSERT INTO Contenido (imagen, titulo, SecionID) 
VALUES	('https://icons8.com/icon/86512/web-design', 'Website', 'parte-seccion-2'),
		('https://icons8.com/icon/33577/responsive', 'Diseño', 'parte-seccion-2'),
		('https://icons8.com/icon/80482/severity', 'Optimizacion', 'parte-seccion-2'),
		('https://icons8.com/icon/116163/web-analytics', 'Responsive', 'parte-seccion-2')


INSERT INTO Contenido (titulo, parrafo, imagen, SecionID)
VALUES ('Crear diseño web', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Asperiores suscipit perspiciatis, explicabo consequatur fugit, 
tempore adipisci at eos voluptas quasi laborum. Ratione exercitationem eius, molestias beatae amet ducimus reprehenderit dicta. Lorem ipsum 
dolor sit amet consectetur, adipisicing elit. Asperiores suscipit perspiciatis, explicabo consequatur fugit, tempore adipisci at eos voluptas 
quasi laborum. Ratione exercitationem eius, molestias beatae amet ducimus reprehenderit dicta. ', 
'https://e00-expansion.uecdn.es/assets/multimedia/imagenes/2020/12/15/16080660925480.jpg', 'parte-seccion-3')


INSERT INTO Contenido (titulo, parrafo, imagen, SecionID)
VALUES ('Daniel Almanza','Sample text. Click to select the text box. Click again or double click to start editing the text.','https://danielalmanza.com/wp-content/uploads/2023/12/Daniel.png'
		,'parte-seccion-4'),
		('Maria.J Gonzalez','Sample text. Click to select the text box. Click again or double click to start editing the text.','https://danielalmanza.com/wp-content/uploads/2023/12/Maria.png'
		,'parte-seccion-4'),
		('Mario Alvarez','Sample text. Click to select the text box. Click again or double click to start editing the text.','https://danielalmanza.com/wp-content/uploads/2023/12/Mario.png'
		,'parte-seccion-4')

INSERT INTO Contenido (titulo, imagen, SecionID)
VALUES('Nuestros Procesos','https://media.istockphoto.com/id/1249219777/es/foto/concepto-de-compra-en-l%C3%ADnea-cajas-de-paquetes-o-papel-con-un-logotipo-de-carrito-de-compras-en.jpg?s=612x612&w=0&k=20&c=c9lWANC_5G8ghLMV_EYiGlJpO55q--wIk8MRgI_08CQ=','parte-seccion-5')

INSERT INTO Contenido (titulo, parrafo, imagen, SecionID)
VALUES('Diseño creado para la herramienta que mas se usa hoy en dia el telefono ', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Officiis commodi at veritatis nemo, libero illum quo expedita eum blanditiis voluptatem sit, quam incidunt autem quas aut ea aliquid fugit facilis.', 'https://www.ionos.es/digitalguide/fileadmin/DigitalGuide/Teaser/e-commerce.jpg', 'parte-seccion-6')
