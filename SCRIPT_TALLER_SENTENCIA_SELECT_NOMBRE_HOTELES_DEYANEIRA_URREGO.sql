create database AGENCIAVIAJES;
USE AGENCIAVIAJES;

create table Sucursales(
IDSucursal int primary key auto_increment,
DireccionSucursales varchar (30) not null,
CiudadSucursal varchar (30) not null,
ProvinciaSucursal varchar (30) not null,
TelefonoSucursal integer (7) not null,
IDVueloFK int not null,
IDHotelFK int not null,
RegimenHospedaje char not null,
ClaseVuelo char not null,
ID_NIF_FK int not null
);

alter table Sucursales add constraint sucursalvuelofk foreign key (IDVueloFK) references Vuelo (IDVuelo);
alter table Sucursales add constraint sucursalhotelfk foreign key (IDHotelFK) references Hotel (IDHotel);
alter table Sucursales add constraint sucursalclientefk foreign key (ID_NIF_FK) references Cliente (ID_NIF);

select*from Sucursales;

insert into Sucursales value (897,'105-30 Union St','Washigton D.C','Washigton D.C',7846591,154,175,'pension completa','turista',48612),
                             (145,'AV. 20 DE NOVIEMBRE NO.859-B','monte video','monte video',4758612,1347,679,'Media pension','primera',15485),
                             (456,'AV. LIBERTAD NO. 34','tijuana','sur',3246851,134,783,'Media pension','turista',21548),
                             (642,'Calle 10 No. 9 - 78  Centro','leticia','Amazonas',4569874,2378,378,'Pension completa','Turista',02854),
                             (031,'Calle 59 No. 27 - 35 Barrio Galán','Barrancabermeja','Barrancabermeja',4215678,157,285,'Media pension','primera',78945);
create table Direccion(
IDDireccion int primary key,
IDSucursalFK int not null,
CalleSucursal varchar (20) not null,
LocalidadSucursal varchar (20) not null
);

alter table Direccion add constraint sucursaldireccionfk foreign key (IDSucursalFK) references Sucursales (IDSucursal);

select*from Direccion;

insert into Direccion value (1,145,'105-30 Union St','Washigton D.C'),
                            (2,456,'AV. LIBERTAD NO. 34','tijuana'),
                            (3,031,'Calle 59 No. 27 - 35 Barrio Galán','Barrancabermeja'),
                            (4,642,'Calle 10 No. 9 - 78  Centro','leticia'),
                            (5,897,'105-30 Union St','Washigton D.C');

create table Telefono(
IDTelefonoFK int primary key,
IDSucursalFK int not null,
TelefonoSucursal integer (7) not null
);

insert into Telefono value (031,031,4215678),
                           (481,642,4569874),
                           (277,145,4758612),
                           (007,456,3246851),
                           (101,897,7846591);
                           
alter table Telefono add constraint sucursalestelefonoFK foreign key (IDSucursalFK) references Sucursales (IDSucursal);

create table Cliente(
ID_NIF int primary key,
NombreCliente varchar (20),
ApellidoCliente varchar (20),
TelefonoCliente integer (7),
Email varchar (40)
);

select*from Cliente;

insert into Cliente value (48612,'camilo','sanchez rojas',1236475,'087camilo@gmail.com'),
						  (21548,'laura sofia','gonzales urdaneta',6894751,'gonzales15sofia@hotmail.com'),
                          (15485,'oscar felipe','ruiz gonzales',34785618,'HKruiz789@outlook.com'),
                          (02854,'carla','franco quevero',1478654,'quevero98@gmail.com'),
                          (78945,'laura camila','sotelo ruiz',4578612,'laurita8@gmail.com');
                          
create table Vuelo(
IDVuelo int primary key,
FechaHoraSalida datetime not null,
FechaHoraLlegada datetime not null,
Origen varchar (30) not null,
DestinoVuelo varchar (30) not null,
N°PlazasTotales int not null
);

select*from Vuelo;

insert into Vuelo value (134,'2019/11/15 14:00','2019/11/15 15:35','Bogota','Venezuela',20),
						(2378,'2021/03/12 06:15','2021/03/15 04:00','Bogota','grecia',15),
                        (154,'2013/12/24 04:00','2013/12/25 06:00', 'EE.UU California','Bazil',16),
                        (1347,'2014/05/06 15:22','2014/05/06 16:10','Bogota','Medellin',22),
                        (157,'2015/04/19 22:00','2015/04/20 00:10','Bogota','Mexico',14);
                        
create table Hotel(
IDHotel int primary key,
NombreHotel varchar (30) not null,
DireccionHotel varchar (30) not null,
CiudadHotel varchar (30) not null,
ProvinciaHotel varchar (30) not null,
TelefonoHotel integer (7) not null
);
select*from Hotel;	

insert into Hotel value (175,'B&E Apartasuites','CALLE 48#90-69','cali','norte',1647894),
						(285,'inter continental','Av. Colombia # 2-72','cali','norte',4759867),
                        (378,'Spiwak','Av. 6 D 36N-18,','california','sur',7946845),
                        (783,'Carretera Chetumal - P. Juarez, Km. 309 - 77710','Playa del Carmen','mexico','quintana',5478961),
                        (679,'Pyramids View Inn','10 Sphinx street، Al Haram','Egipto','Haram',3467851);

show tables;    
select *from Vuelo;
 
 select COUNT(IDSucursal) from (Sucursales);

/*like 'a%' significa que se buscan los registros que termian con la letra a, '%a' significa que busca los regiistros que
inician con la letra a, '%a%' significa que busca los regitros que tenga la a intermediaria.*/
select *from Cliente;
describe Cliente;
select * from Cliente where NombreCliente like '%a%';
 
select *from Direccion where IDDireccion=1;

select IDVuelo, FechaHoraSalida from Vuelo;

select IDSucursalFK as 'identificacion', TelefonoSucursal as 'numero de telefono' from Telefono;

Select *from Telefono order by IDSucursalFK desc ,TelefonoSucursal asc;

select*from Sucursales;
select*from Sucursales where DireccionSucursales='105-30 Union St' and IDVueloFK=2378;
select*from Sucursales where DireccionSucursales='105-30 Union St' or IDVueloFK=2378;
select*from Sucursales where not DireccionSucursales='105-30 Union St' or IDVueloFK=2378;

select min(ID_NIF) as 'codigo' from Cliente;

select*from Sucursales;
select DireccionSucursales from Sucursales order by DireccionSucursales asc;