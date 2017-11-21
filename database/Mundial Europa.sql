/**
* Contruccion de la estructura de la base de datos
* del mundial de Europa 2018
*/

-- Eliminacion de tablas en caso de que existan
DROP TABLE IF EXISTS Ciudades;
DROP TABLE IF EXISTS Fases;
DROP TABLE IF EXISTS Grupos;
DROP TABLE IF EXISTS Confederaciones;
DROP TABLE IF EXISTS Pais;
DROP TABLE IF EXISTS TipoIncidencia;

/**
Creación de la tabla de las fases
*/
create table Fases(
	cod_fase smallint,
	nomb_fase varchar (50) not null,
	
	primary key(cod_fase)
);

/**
Creación de la tabla de los grupos
*/
create table Grupos(
	cod_grupo smallint,
	nomb_grupo varchar (50) not null,
	
	primary key(cod_grupo)
);

/**
Creación de la tabla de las confederaciones
*/
create table Confederaciones(
	cod_confe smallint,
	nombre_confe varchar (50) not null,
	
	primary key(cod_confe)
);

/**
Creación de la tabla de los paises
*/
create table Pais(
	cod_pais varchar(3),
	nomb_pais varchar (50) not null,
	
	primary key(cod_pais)
);

/**
Creación de la tabla de los tipos de incidencias en un partido
*/
create table TipoIncidencia(
	cod_incidencia smallint,
	nom_incidencia varchar (50) not null,
	
	primary key(cod_incidencia)
);

/**
Creación de la tabla de las ciudades de los paises
*/
create table Ciudades(
	cod_ciudad smallint,
	nomb_ciudad varchar (50) not null,
	cod_pais varchar(3),
	
	foreign key (cod_pais) references Pais (cod_pais),
	primary key(cod_ciudad)
);