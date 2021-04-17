create database AGENDA;
USE AGENDA;

create table Agenda(
codigo int primary key auto_increment,
NombreAgenda varchar(25), 
DomicilioAgenda varchar(30), 
TelefonoAgenda varchar(10) 
);

show tables;
describe Agenda;
select*from Agenda;

insert into Agenda value ('','Productos','aceite, arroz, pasta y tomates','2104778'),
                         ('','Cosmeticos','agua miselar, labial, perfume, sombras y base',2145687),
                         ('','Electronica','juegos de destornilladores y mainlla antiestatica',3456987),
                         ('','calzado','sandalias talla 38, zapatos para niño blacos tallla 25',6547891),
                         ('','vestuario','camisa XL roja y jean para mujer talla 36',3165478),
                         ('','Joyeria','juego de cadena y aretes dorados',3465789),
                         ('','Alberto Mores','Colon 123','4234567'), 
                         ('','Juan Paez','Avellaneda 135','4458787'), 
                         ('','Mariana Lopez','Urquiza 333','4545454'), 
                         ('','Fernando Lopez','Urquiza 333','4545454'),
                         ('','Juan Paez','Jet','457812'),
                         ('','Juan Paez','arroz 50 klg','457891'),
                         ('','juan sanchez','coptel','5487487');
                         
select *from Agenda where NombreAgenda='Juan Paez';   
select *from Agenda where DomicilioAgenda='Colon 123';
select *from Agenda where TelefonoAgenda='4545454';

update Agenda set NombreAgenda='Juan Jose' where codigo=13; 
update Agenda set TelefonoAgenda='4445566' where codigo=9; 
update Agenda set NombreAgenda='Juaquin' where codigo=11; 
