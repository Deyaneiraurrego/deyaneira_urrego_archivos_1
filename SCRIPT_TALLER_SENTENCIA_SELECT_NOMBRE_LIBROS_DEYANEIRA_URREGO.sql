create database LIBROS;
USE LIBROS;

drop table LIBROS;
create table Libros(
codigo int primary key auto_increment,
TituloLibros varchar (20),
AutorLibros varchar (30),
EditorialLibros varchar (15)
);

show tables;
describe Libros;
select*from Libros; 

insert into Libros value ('','100 años de Soledad','Garcia Marquez','Planeta'),
						 ('','El Tunel','Ernesto Sabato','Emece'),
                         ('','50 sombras de Grey','E. L. James','Emece'),
                         ('','El perfume','Patrick Süskind','Diogenes Verlag'),
                         ('','Satanás','Mario Mendoza','Seix Barral'),
                         ('','El akelarre','Mario Mendoza','Planeta'),
                         ('','Mientras llueve','Fernando Soto Aparicio','PANAMERICANA'),
                         ('','Fragmentos de amor furtivo','Héctor Abad Faciolince','Alfaguara'),
                         ('','la chica del tren','Paula Hawkins','Planeta'),
						 ('','los hornos de hitler',' Olga Lengyel','Diana'),
                         ('','El principito','Antoine de Saint-Exupéry','Panamericana Editorial'),
                         ('','Piense y hágase rico','Napoleon Hill','Grijolbo'),
                         ('','Silber','Kerstin Guier','Block'),
                         ('','Matematica estas ahi','Paenza','Paidos,40.80'),
                         ('','El aleph','Borges','Planeta'), 
                         ('','Martin Fierro','Jose Hernandez','Emece'),
                         ('','Aprenda PHP','Mario Molina','Emece'), 
                         ('','Cervantes','Borges','Paidos'),
                         ('','Silber','Kerstin Guier','Block'),
                         ('','El akelarre','Mario Mendoza','Planeta'),
                         ('','Satanás','Mario Mendoza','Seix Barral'),
                         ('','los hornos de hitler',' Olga Lengyel','Diana'),
                         ('','El Tunel','Ernesto Sabato','Emece');
                         
select*from Libros where EditorialLibros='Borges';

select*from Libros where EditorialLibros='Emece';

select*from Libros where EditorialLibros='Martin Fierro';

update Libros set AutorLibros='Adrian Paenza' where codigo=14;
update Libros set AutorLibros='Adrian Paenza' where codigo=14;
