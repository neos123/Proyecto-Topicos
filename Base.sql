drop database SegumientoProgramatico2;
create database SegumientoProgramatico2;
use SegumientoProgramatico2;

/*-----CREANDO TABLA MATERIA-----------*/
CREATE TABLE MATERIA(
Materia varchar(60),
Catedratico varchar(150),
Carrera varchar(70),
Grupo varchar(10)not null primary key,
LunesInicio varchar(5),
LunesFin varchar(5),
MartesInicio varchar(5),
MartesFin varchar(5),
MiercolesInicio varchar(5),
MiercolesFin varchar(5),
JuevesInicio varchar(5),
JuevesFin varchar(5),
ViernesInicio varchar(5),
ViernesFin varchar(5),
TotalEstudiantes int,
UnidadesEvaluadasALaFecha int,
Aprobados int,
Reprobados int,
NoAsisten int);

SELECT *FROM MATERIA;

/*----CREANDO TABLA TEMAS -------------*/
CREATE TABLE TEMAS( 
Grupo varchar(10)not null, 
NumeroTema int not null, 
Tema varchar(50),
HoraProg varchar(5),
InicioProg varchar(10),
FinProg varchar(10),
AvanceProg varchar(4),
HoraReal varchar(5),
InicioReal varchar(10),
FinReal varchar(10),
AvanceReal varchar(10));



/*-----CREANDO FECHA PRACT--------------*/

CREATE TABLE FECHA_PRACT(
Grupo varchar (10) not null,
NumPractica int not null,
Practica varchar(50),
unidad char(2),
FechaProg date,
FechaReal date);



/*-----CREANDO TABLA PROGRAM-------*/

CREATE TABLE PROGRAMA(
Grupo varchar(10)not null, 
Semana int not null,
Unidad int ,
TP varchar(6),
TR varchar(6),
EP varchar(6),
ER varchar(6), 
FS date);



/*---------CREANDO TABLA VISITAS---*/

CREATE TABLE VISITAS(
Grupo varchar(10)not null,
NombreEmpresa varchar(50) not null,
UnidadTematica varchar(50),
FechaProgramadaVisita date,
FechaRealizadaVisita date
);

select * from VISITAS;

/*----LLAVES PRIMARIAS---*/
alter table PROGRAMA add constraint PK_PROGRAMA primary key(Grupo, Semana);
alter table TEMAS add constraint PK_TEMAS primary key(Grupo, NumeroTema);
alter table  VISITAS add constraint PK_VISITAS primary key (Grupo , NombreEmpresa);
alter table  FECHA_PRACT  add constraint PK_FECHA primary key (Grupo , NumPractica);


/*---LLAVES FORANEAS---*/

alter table TEMAS add constraint fk_materia foreign key (Grupo) references MATERIA (Grupo);

alter table PROGRAMA add constraint fk_materiapro foreign key (Grupo) references MATERIA (Grupo);

alter table VISITAS add constraint fk_materiavisi foreign key (Grupo) references MATERIA (Grupo);

alter table FECHA_PRACT add constraint fk_materiafecha foreign key (Grupo) references MATERIA (Grupo);