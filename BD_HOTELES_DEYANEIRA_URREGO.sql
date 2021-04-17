create database AGENCIAVIAJES;
use AGENCIAVIAJES;

create table Sucursales(
IDSucursal int primary key auto_increment,
DireccionSucursales varchar (30) not null,
CiudadSucursal varchar (30) not null,
ProvinciaSucursal varchar (30) not null,
TelefonoSucursal integer (7) not null,
IDVueloFK int not null,
IDHotelFK int not null
);

alter table Sucursales change column `Direccion` `DireccionSucursal` varchar (30) not null;
alter table Sucursales change column `Ciudad` `CiudadSucursal` varchar (30) not null;
alter table Sucursales change column `Provincia` `ProvinciaSucursal` varchar (30) not null;
alter table Sucursales change column `Telefono`  `TelefonoSucursal` integer (7) not null;

alter table Sucursales add constraint sucursalvuelofk foreign key (IDVueloFK) references Vuelo (IDVuelo);

alter table Sucursales add constraint sucursalhotelfk foreign key (IDHotelFK) references Hotel (IDHotel);
create table Direccion(
IDDireccion int primary key,
IDSucursalFK int not null
);

alter table Direccion add constraint sucursaldireccionfk foreign key (IDSucursalFK) references Sucursales (IDSucursal);

create table Telefono(
IDTelefonoFK int primary key,
IDSucursalFK int not null
);

alter table Telefono add constraint sucursalestelefonoFK foreign key (IDSucursalFK) references Sucursales (IDSucursal);

create table DetalleTener(
IDDetale int primary key auto_increment,
IDSucursalFK int not null,
ID_NIF_FK int not null
);

alter table DetalleTener add constraint detallesucursalfk foreign key (IDSucursalFK) references Sucursales (IDSucursal);

alter table DetalleTener  add constraint detalleclientefk foreign key (ID_NIF_FK) references Cliente (ID_NIF);

create table Cliente(
ID_NIF int primary key,
NombreCliente varchar (20),
ApellidoCliente varchar (20),
TelefonoCliente integer (7),
Email varchar (40)
);

create table Vuelo(
IDVuelo int primary key,
FechaSalida date not null,
HoraSalida time not null,
FechaLlegada date not null,
HoraLlegada time not null,
Origen varchar (30) not null,
N°PlazasTotales int not null,
ClaseVuelo char
);

alter table Vuelo drop column ID_NIF_FK;

create table Hotel(
IDHotel int primary key,
NombreHotel varchar (30) not null,
DireccionHotel varchar (30) not null,
CiudadHotel varchar (30) not null,
ProvinciaHotel varchar (30) not null,
TelefonoHotel integer (7) not null,
RegimenHospedaje char not null
);

alter table Hotel drop column ID_NIF_FK;

create table RegimenHospedaje(
IDHospedaje int primary key,
TipoPension boolean not null,
FechaEntrada date not null,
FechaSalida date not null,
IDHotelFK int not null
); 

alter table RegimenHospedaje add constraint hospedajeregimenfk foreign key (IDHotelFK) references Hotel (IDHotel);