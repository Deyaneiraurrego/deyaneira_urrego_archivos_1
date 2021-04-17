create database DRUTAS;
use DRUTAS;

create table USUARIO(
IDUsuario int primary key,
idTDFK int not null,
N°DocuemntoUsuario int not null,
NombreUsuario varchar (15) not null,
ApellidoUsuario varchar (30) not null,
TelefonoUsuario int not null, 
CorreoUsuario varchar (40) not null,
DireccionUsuario varchar (40) not null,
FechaNacimientoUsuario datetime  not null,
CiudadNacimientoUsuario varchar (40) not null,
idTUsuarioFK int not null,
N°CelularUsuario int not null,
PaswordUsuario varchar (20) not null,
EstadoUsuario varchar (20) not null
);

alter table Usuario add constraint fkusuariotipo foreign key (idTUsuarioFK) references TIPOUSUARIO (idTUsuario);

alter table USUARIO add constraint fkusuariodocumento foreign key (idTDFK) references TIPODOCUMENTO (idTD);

create table TIPOUSUARIO(
idTUsuario int primary key auto_increment, 
NombreTUsuario varchar (20) not null,
EstadoTU varchar (20) not null   
);


create table TIPODOCUMENTO(
idTD int primary key auto_increment,
NombretipoDocuemnto varchar (20) not null,
EstadoTD varchar (20) not null
);


create table ASIGUSUARIOCURSO(
idAsiguc int primary key auto_increment,
IDUsuarioFK int not null,
idCursoFK int not null
);

alter table ASIGUSUARIOCURSO add constraint fkcursousuario foreign key (IDUsuarioFK) references USUARIO (IDUsuario);

alter table ASIGUSUARIOCURSO add constraint fkcursoasig foreign key (idCursoFK) references CURSO (idCurso);

create table CURSO(
idCurso int primary key auto_increment,
NombreCurso varchar (30) not null,
EstadoCurso varchar (20) not null
);

create table ASIGRECORRIDOUSUARIO(
idAsigVehiculo int primary key auto_increment,
IDUsuarioFK int not null,
IDRecorridoFK int not null
);

alter table `ASIGRECORRIDOUSUARIO` change column `IDRecorrdioFK` `IDRecorrido` int not null;
alter table `ASIGRECORRIDOUSUARIO` change column `IDRecorrido` `IDRecorridoFK` int not null;

alter table ASIGRECORRIDOUSUARIO add constraint fkusuarioasigrecorrido foreign key (IDUsuarioFK) references USUARIO (IDUsuario);

alter table ASIGRECORRIDOUSUARIO add constraint fkrecorridousuario foreign key (IDRecorridoFK) references RECORRIDO (IDRecorrido);

create table PAGO(
IDPago int primary key auto_increment,
FechaPago datetime  not null,
IDUsuarioFK int not null,
TotalPago int not null,
EstadoPago varchar (20) not null
);

alter table PAGO add constraint fkpagousuario foreign key (IDUsuarioFK) references USUARIO (IDUsuario);

create table DETALLEPAGO(
IDDetalleServicio int primary key auto_increment,
IDPagoFK int not null,
IDServicioFK int not null,
Descripcion varchar (50) not null,
SubTotal int not null
);

alter table DETALLEPAGO add constraint fkpagodetalle foreign key (IDPagoFK) references PAGO (IDPago);

alter table DETALLEPAGO add constraint fkserviciodetalle foreign key (IDServicioFK) references SERVICIO (IDServicio);

create table RECORRIDO (
IDRecorrido int primary key auto_increment,
NombreRecorrido varchar (50) not null,
Localidad varchar (30) not null,
EstadoRuta varchar (20) not null
);

create table ASIGVEHICULORECORRIDO(
IDAsigVehiculo int primary key auto_increment,
IDVehiculoFK int not null,
IDRecorridoFK int not null
);

alter table ASIGVEHICULORECORRIDO add constraint fkasigvehiculo foreign key (IDVehiculoFK) references VEHICULO (IDVehiculo);

alter table ASIGVEHICULORECORRIDO add constraint fkrecorridoasig foreign key (IDRecorridoFK) references RECORRIDO (IDRecorrido); 

create table VEHICULO(
IDVehiculo int primary key auto_increment,
IDMarcaVehiculoFK int not null,
ModeloVehiculo varchar (20) not null,
FechaMatricula datetime not null,
EstadoVehiculo varchar (20) not null
);

alter table VEHICULO add constraint fkmarcavehiculo foreign key (IDMarcaVehiculoFK) references MARCA (IDMarcaVehiculo);

create table SERVICIO(
IDServicio int primary key auto_increment,
NombreServicio varchar (40) not null,
ValorServicio int not null,
EstadoServicio varchar (20) not null
);

create table DOCVEHICULO(
IDDocVehiculo int primary key auto_increment,
NombreDocVehiculo varchar (30) not null,
EstadoDoc varchar (20)
);

create table CARGUEDOC(
IDCargeDoc int primary key auto_increment,
IDDocVehiculoFK int not null,
IDVehiculoFK int not null,
FechaCargue  datetime not null,
Archivo blob not null
);

alter table CARGUEDOC add constraint fkdocumentocargue foreign key (IDDocVehiculoFK) references DOCVEHICULO (IDDocVehiculo);

alter table CARGUEDOC add constraint fkvehiculocargue foreign key (IDVehiculoFK) references VEHICULO(IDVehiculo);

create table MARCA(
IDMarcaVehiculo int primary key auto_increment,
NombreMarcaVehiculo varchar (30) not null,
EstadoMarca varchar (20) not null 
);