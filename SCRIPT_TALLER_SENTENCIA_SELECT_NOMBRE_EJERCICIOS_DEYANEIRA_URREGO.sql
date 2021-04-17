create database EJERCICIOS;
use EJERCICIOS;

create table peliculas(
 IDpeliculas int primary key auto_increment,
 titulo varchar(25)not null, 
 actor varchar(25) not null, 
 duracion integer,
 cantidad integer 
);

describe peliculas;

insert into peliculas value  ('','Mision imposible','Tom Cruise',120,3),
                             ('','Mision imposible 2','Tom Cruise',180,2),
                             ('','Mujer bonita','Julia R.',90,3); 
insert into peliculas value ('','El conjuro','patrick wils',112,3),
                            ('','Mulan','Crystal Liu',115,1),
                            ('','Aves de Presa','Margot Robbie',109,1),
                            ('','Guason','Joaquin Phoenix',122,1),
                            ('','50 Sombras liberadas','Jamie Dornan',120,3);

select titulo, cantidad from peliculas;

create table empleados( 
  IDempleado int primary key auto_increment,
  nombre varchar(20), 
  documento varchar(8),  
  sexo varchar(1), 
  domicilio varchar(30), 
  sueldobasico float 
 ); 
 
 describe empleados;
 
insert into empleados value ('','Juan Perez','22345678','m','Sarmiento 123',200),
							('','Ana Melo','24345678','f','Colon 134',400),
                            ('','Marcos Torres','27345678','m','Urquiza 479',700); 
                            
                            
insert into empleados value ('','Juan Sanchez','458784856','m','2 platos a la carta',300),
                            ('','carolina suarez','14578148','f','pasta con conchas',150),
                            ('','luis amesquita','1487488','m','almuerzo simple',250),
                            ('','alfredo sanchez','45874416','m','carne a la plncha',400),
                            ('','laura vega','15488451','f','pechuga asada',350);

select nombre, documento, sueldobasico from empleados;