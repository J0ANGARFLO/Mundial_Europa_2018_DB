/**
* Contruccion de la estructura de la base de datos
* del mundial de Europa 2018
*/

-- Eliminacion de tablas en caso de que existan
DROP TABLE IF EXISTS Incidencias;
DROP TABLE IF EXISTS Enfrentamiento;
DROP TABLE IF EXISTS Jugadores;
DROP TABLE IF EXISTS Dirige;
DROP TABLE IF EXISTS Participantes;
DROP TABLE IF EXISTS Equipos;
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

/**
Creación de la tabla de los equipos
*/
create table Equipos(
	cod_equipo varchar(4),
	nomb_equipo varchar(50) not null,
	ciudad_sede varchar (5) not null,
	cod_confe smallint not null,
	
	CONSTRAINT FK_Equipos_Ciudades FOREIGN KEY (ciudad_sede) REFERENCES Ciudades (cod_ciudad),
	CONSTRAINT FK_Equipos_Confederaciones FOREIGN KEY (cod_confe) REFERENCES Confederaciones (cod_confe),
	CONSTRAINT PK_Equipos PRIMARY KEY(cod_equipo)
);
CREATE INDEX IXFK_Equipos_Ciudades ON Equipos(ciudad_sede);
CREATE INDEX IXFK_Equipos_Confederaciones ON Equipos(cod_confe);

/**
Creación de la tabla de los equipos participantes en los mundiales
*/
create table Participantes(
	anio_mundial smallint,
	cod_equipo varchar(4) not null,
	puesto smallint not null,
	
	CONSTRAINT FK_Participantes_Equipos FOREIGN KEY (cod_equipo) REFERENCES Equipos (cod_equipo),
	CONSTRAINT FK_Participantes_Mundiales FOREIGN KEY (anio_mundial) REFERENCES Torneos (anio),
	CONSTRAINT PK_Participantes PRIMARY KEY(anio_mundial,cod_equipo)
);
CREATE INDEX IXFK_Participantes_Equipos ON Participantes(cod_equipo);
CREATE INDEX IXFK_Participantes_Mundiales ON Participantes(anio_mundial);

/**
Creación de la tabla de los directores que dirigen un equipo
*/
create table Dirige(
	cod_equipo varchar(4) not null,
	cod_dt decimal(5) not null,
	fecha_inicio date not null,
	fecha_fin date,
	
	CONSTRAINT FK_Dirige_DirectoresTecnicos FOREIGN KEY (cod_dt) REFERENCES DirectoresTecnicos (cod_dt),
	CONSTRAINT FK_Dirige_Equipos FOREIGN KEY (cod_equipo) REFERENCES Equipos (cod_equipo),
	CONSTRAINT PK_Dirige PRIMARY KEY(cod_equipo,cod_dt)
);
CREATE INDEX IXFK_Dirige_DirectoresTecnicos ON Dirige(cod_dt);
CREATE INDEX IXFK_Dirige_Equipos ON Dirige(cod_equipo);

/**
Creación de la tabla de los jugadores de un equipo
*/
create table Jugadores(
	cod_jugador decimal(12) not null,
	cod_equipo varchar(4) not null,
	cod_persona decimal(12),
	participaciones_historico smallint,
	goles_historico smallint,
	partidos_ganados_historico smallint,
	partidos_empatados_historico smallint,
	partidos_perdidos_historico smallint,
	cod_pais varchar (3),
	
	CONSTRAINT FK_Jugadores_Equipos FOREIGN KEY (cod_equipo) REFERENCES Equipos (cod_equipo),
	CONSTRAINT FK_Jugadores_Personas FOREIGN KEY (cod_persona) REFERENCES Personas (cod_persona),
	CONSTRAINT PK_Jugadores PRIMARY KEY(cod_jugador)
);
CREATE INDEX IXFK_Jugadores_Equipos ON Jugadores(cod_equipo);
CREATE INDEX IXFK_Jugadores_Personas ON Jugadores(cod_persona);
CREATE INDEX IXFK_Jugadores_Pais ON Jugadores(cod_pais);

/**
Creación de la tabla de los enfrentamientos o partidos entre equipos
*/
create table Enfrentamiento(
	cod_equipo_local varchar(4) not null,
	cod_equipo_visita varchar(4) not null,
	fecha_enfrentamiento date not null,
	cod_arbitro decimal(12) not null,
	estadio varchar (50) not null,
	cod_fase smallint not null,
	cod_grupo smallint not null,
	
	CONSTRAINT FK_Enfrentamiento_ArbitroPita FOREIGN KEY (cod_arbitro) REFERENCES Arbitros (cod_arbitro),
	CONSTRAINT FK_Enfrentamiento_Equipos FOREIGN KEY (cod_equipo_local) REFERENCES Equipos (cod_equipo),
	CONSTRAINT FK_Enfrentamiento_Equipos_Visita FOREIGN KEY (cod_equipo_visita) REFERENCES Equipos (cod_equipo),
	CONSTRAINT FK_Enfrentamiento_Fases FOREIGN KEY (cod_fase) REFERENCES Fases (cod_fase),
	CONSTRAINT FK_Enfrentamiento_Grupos FOREIGN KEY (cod_grupo) REFERENCES Grupos (cod_grupo),
	CONSTRAINT PK_Enfrentamiento PRIMARY KEY(cod_equipo_local,cod_equipo_visita,fecha_enfrentamiento)
);
CREATE INDEX IXFK_Enfrentamiento_Arbitro ON Enfrentamiento(cod_arbitro);
CREATE INDEX IXFK_Enfrentamiento_Equipos ON Enfrentamiento(cod_equipo_local);
CREATE INDEX IXFK_Enfrentamiento_Equipos_02 ON Enfrentamiento(cod_equipo_visita);
CREATE INDEX IXFK_Enfrentamiento_Fases ON Enfrentamiento(cod_fase);
CREATE INDEX IXFK_Enfrentamiento_Grupos ON Enfrentamiento(cod_grupo);

/**
Creación de la tabla de las incidencias o faltas en un partido
*/
create table Incidencias(
	cod_equipo_local varchar(4) not null,
	cod_jugador decimal(12) not null,
	cod_equipo_visita varchar(4) not null,
	tipo_incidencia smallint not null,
	minuto integer not null,
	fecha_enfrenta date not null,
	
	CONSTRAINT FK_Incidencias_Enfrentamiento FOREIGN KEY (cod_equipo_local,cod_equipo_visita,fecha_enfrenta) REFERENCES Enfrentamiento (cod_equipo_local,cod_equipo_visita,fecha_enfrentamiento),
	CONSTRAINT FK_Incidencias_Jugadores FOREIGN KEY (cod_jugador) REFERENCES Jugadores (cod_jugador),
	CONSTRAINT FK_Incidencias_TipoIncidencia FOREIGN KEY (tipo_incidencia) REFERENCES TipoIncidencia (cod_incidencia),
	CONSTRAINT PK_Incidencias PRIMARY KEY(cod_equipo_local,cod_jugador,cod_equipo_visita,tipo_incidencia,fecha_enfrenta)
);
CREATE INDEX IXFK_Incidencias_Enfrentamiento ON Incidencias(cod_equipo_local,cod_equipo_visita);
CREATE INDEX IXFK_Incidencias_Enfrentamiento_02 ON Incidencias(cod_equipo_local,cod_equipo_visita,fecha_enfrenta);
CREATE INDEX IXFK_Incidencias_Jugadores ON Incidencias(cod_jugador);
CREATE INDEX IXFK_Incidencias_Plantilla ON Incidencias(cod_equipo_local,cod_jugador);
CREATE INDEX IXFK_Incidencias_Plantilla_02 ON Incidencias(cod_equipo_visita,cod_jugador);
CREATE INDEX IXFK_Incidencias_TipoIncidencia ON Incidencias(tipo_incidencia);