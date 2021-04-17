create database EJERCICIOS2;
Use EJERCICIOS2;

create table articulos(
CodigoArticulo int primary key auto_increment,
NombreArticulos varchar (20),
DescripcionArticulo varchar (30),
Precio float 
);

describe articulos;

 insert into articulos values (1,'impresora','Epson Stylus C45',400.80),
                              (2,'impresora','Epson Stylus C85',500),
                              (3,'monitor','Samsung 14',800); 
insert into articulos values ('','teclado','ingles Biswal',100),
                              ('','teclado','español Biswal',90); 
                              
 insert into articulos values ('','CPU','Cpu Intel Pentium Gold 3.7 Ghz 4gb Solido De 240gb Real 300','1.200.000'),
							  ('','Procesador intel','Procesador Intel Core I5 10400 6 Nucleos / 12 Hilos 4,3 Ghz','749.900'),
                              ('','Portatil','IdeaPad 1 14" - Ice Blue','1.499.900'),
                              ('','Celular','Samsung Galaxy A01 Core 4G','299.900'),
                              ('','Audifonos Gamer','Audífonos gamer Kotion Each G9000 black y blue','55.800');
                              
select CodigoArticulo, DescripcionArticulo, Precio  from articulos where NombreArticulos='teclado';

 select*from articulos where NombreArticulos='impresora';

 create table medicamentos( 
  codigo int unsigned primary key auto_increment, 
  nombre varchar(20), 
  laboratorio varchar(20), 
  precio decimal(5,2) unsigned, 
  cantidad int unsigned);
  
  describe medicamentos;
  
   insert into medicamentos values ('','acetaminofen','N° 12','1.200',2),
								   ('','ibuprofeno','N°001','1500',1),
                                   ('','Gotas de Ojos','N°16','5.000',1);
                                   
   insert into medicamentos values ('','Aspirina','Bayer','5.000',200),
								   ('','Ramipril','Bayer','4.000',100);
 
  select*from medicamentos where laboratorio='Roche' and precio<='5';  
  select*from medicamentos where laboratorio='Roche' and precio<='5'; 
  
  SELECT * FROM medicamentos WHERE laboratorio='Roche' OR precio<='5';

  select*from medicamentos where laboratorio='Bayer' and cantidad=100;  
    select*from medicamentos where laboratorio='Bayer' or cantidad=100;    
  
  SELECT * FROM medicamentos WHERE laboratorio<>'Bayer';
  
  insert into medicamentos values ('','Sertal','Roche',5.2,100),
					              ('','Buscapina','Roche',4.10,200),
					              ('','Amoxidal 500','Bayer',15.60,100),
					              ('','Paracetamol 500','Bago',1.90,200),
				                  ('','Bayaspirina','Bayer',2.10,150),
					              ('','Amoxidal jarabe','Bayer',5.10,250); 
                                  
select *from medicamentos order by precio desc;
select *from medicamentos order by cantidad;
select *from medicamentos order by cantidad;

select *from medicamentos order by laboratorio desc, cantidad asc;

  
  create table clientes(
  codigo int primary key auto_increment, 
  nombre varchar(30) not null, 
  domicilio varchar(30), 
  ciudad varchar(20), 
  provincia varchar (20), 
  telefono varchar(11)
  );
 SELECT * FROM clientes;
 insert into clientes values
('','Lopez Marcos', 'Colon 111', 'Córdoba','Cordoba','null'), 
('','Perez Ana', 'San Martin 222', 'Cruz del Eje','Cordoba','4578585'), 
('','Garcia Juan', 'Rivadavia 333', 'Villa Maria','Cordoba','4578445'), 
('','Perez Luis', 'Sarmiento 444', 'Rosario','Santa Fe',null), 
('','Pereyra Lucas', 'San Martin 555', 'Cruz del Eje','Cordoba','4253685'), 
('','Gomez Ines', 'San Martin 666', 'Santa Fe','Santa Fe','0345252525'), 
('','Torres Fabiola', 'Alem 777', 'Villa del Rosario','Cordoba','4554455'), 
('','Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje','Cordoba',null),
('','Ramos Betina', 'San Martin 999', 'Cordoba','Cordoba','4223366'),
('','Lopez Lucas', 'San Martin 1010', 'Posadas','Misiones','0457858745'); 

SELECT COUNT(codigo) FROM clientes;

select COUNT(telefono) from clientes where codigo;

select ciudad,provincia from clientes order by ciudad,provincia asc;

