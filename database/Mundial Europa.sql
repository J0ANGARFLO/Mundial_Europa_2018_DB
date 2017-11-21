/**
* Contruccion de la estructura de la base de datos
* del mundial de Europa 2018
*/

-- Eliminacion de tablas en caso de que existan
DROP TABLE IF EXISTS DirectoresTecnicos;
DROP TABLE IF EXISTS Arbitros;
DROP TABLE IF EXISTS Personas;
DROP TABLE IF EXISTS Torneos;
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
	
	CONSTRAINT PK_Fases PRIMARY KEY(cod_fase)
);

/**
Creación de la tabla de los grupos
*/
create table Grupos(
	cod_grupo smallint,
	nomb_grupo varchar (50) not null,
	
	CONSTRAINT PK_Grupos PRIMARY KEY(cod_grupo)
);

/**
Creación de la tabla de las confederaciones
*/
create table Confederaciones(
	cod_confe smallint,
	nombre_confe varchar (50) not null,
	
	CONSTRAINT PK_Confederacion PRIMARY KEY(cod_confe)
);

/**
Creación de la tabla de los paises
*/
create table Pais(
	cod_pais varchar(3),
	nomb_pais varchar (50) not null,
	
	CONSTRAINT PK_Pais PRIMARY KEY(cod_pais)
);

/**
Creación de la tabla de los tipos de incidencias en un partido
*/
create table TipoIncidencia(
	cod_incidencia smallint,
	nom_incidencia varchar (50) not null,
	
	CONSTRAINT PK_TipoIncidencia PRIMARY KEY(cod_incidencia)
);

/**
Creación de la tabla de las ciudades de los paises
*/
create table Ciudades(
	cod_ciudad varchar(5),
	nomb_ciudad varchar (50) not null,
	cod_pais varchar(3) not null,
	
	CONSTRAINT FK_Ciudades_Pais FOREIGN KEY (cod_pais) REFERENCES Pais (cod_pais),
	CONSTRAINT PK_Ciudades PRIMARY KEY(cod_ciudad)
);
CREATE INDEX IXFK_Ciudades_Pais ON Ciudades(cod_pais);

/**
Creación de la tabla de los torneos
*/
create table Torneos(
	anio smallint,
	cod_pais_anfitrion varchar (3) not null,
	nom_torneo varchar(50) not null,
	
	CONSTRAINT FK_Mundiales_Pais FOREIGN KEY (cod_pais_anfitrion) REFERENCES Pais (cod_pais),
	CONSTRAINT PK_Mundiales PRIMARY KEY(anio)
);
CREATE INDEX IXFK_Mundiales_Pais ON Torneos(cod_pais_anfitrion);


/**
Creación de la tabla de las personas (cualquier persona)
*/
create table Personas(
	cod_persona decimal(12),
	nom_persona varchar(50) not null,
	ape_persona varchar(50) not null,
	cod_pais varchar (3) not null,
	f_nac date,
	
	CONSTRAINT FK_Personas_PaisNace FOREIGN KEY (cod_pais) REFERENCES Pais (cod_pais),
	CONSTRAINT PK_Personas PRIMARY KEY(cod_persona)
);
CREATE INDEX IXFK_Personas_Pais ON Personas(cod_pais);

/**
Creación de la tabla de los arbitros
*/
create table Arbitros(
	cod_arbitro decimal(12),
	cod_persona decimal(12),
	cod_pais varchar (3) not null,
	
	CONSTRAINT FK_Arbitro_Personas FOREIGN KEY (cod_persona) REFERENCES Personas (cod_persona),
	CONSTRAINT FK_Arbitro_PaisNacimiento FOREIGN KEY (cod_pais) REFERENCES Pais (cod_pais),
	CONSTRAINT PK_Arbitro PRIMARY KEY(cod_arbitro)
);
CREATE INDEX IXFK_Arbitro_Personas ON Arbitros(cod_persona);
CREATE INDEX IXFK_Arbitro_Pais ON Arbitros(cod_pais);

/**
Creación de la tabla de los arbitros
*/
create table DirectoresTecnicos(
	cod_dt decimal(12),
	cod_persona decimal(12),
	cod_pais varchar (3) not null,
	
	CONSTRAINT FK_DirectoresTecnicos_Personas FOREIGN KEY (cod_persona) REFERENCES Personas (cod_persona),
	CONSTRAINT FK_DirectoresTecnicos_Pais FOREIGN KEY (cod_pais) REFERENCES Pais (cod_pais),
	CONSTRAINT PK_Dt PRIMARY KEY(cod_dt)
);
CREATE INDEX IXFK_ADirectoresTecnicos_Personas ON DirectoresTecnicos(cod_persona);
CREATE INDEX IXFK_ADirectoresTecnicos_Pais ON DirectoresTecnicos(cod_pais);