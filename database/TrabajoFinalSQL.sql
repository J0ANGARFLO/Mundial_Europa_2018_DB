

DROP TABLE IF EXISTS Arbitros CASCADE
;

DROP TABLE IF EXISTS Ciudades CASCADE
;

DROP TABLE IF EXISTS Confederaciones CASCADE
;

DROP TABLE IF EXISTS DirectoresTecnicos CASCADE
;

DROP TABLE IF EXISTS Enfrenta CASCADE
;

DROP TABLE IF EXISTS Equipos CASCADE
;

DROP TABLE IF EXISTS Fases CASCADE
;

DROP TABLE IF EXISTS Grupos CASCADE
;

DROP TABLE IF EXISTS Incidencias CASCADE
;

DROP TABLE IF EXISTS Jugadores CASCADE
;

DROP TABLE IF EXISTS Paises CASCADE
;

DROP TABLE IF EXISTS Participa CASCADE
;

DROP TABLE IF EXISTS Personas CASCADE
;

DROP TABLE IF EXISTS TiposIncidencias CASCADE
;

DROP TABLE IF EXISTS Torneos CASCADE
;

/* Create Tables */

CREATE TABLE Arbitros
(
	cod_arbitro decimal(12) NOT NULL,
	cod_persona decimal(12) NULL
)
;

CREATE TABLE Ciudades
(
	cod_ciudad varchar(5) NOT NULL,
	nomb_ciudad varchar(50) NULL,
	cod_pais varchar(4) NULL
)
;

CREATE TABLE Confederaciones
(
	cod_confe smallint NOT NULL,
	nom_confe varchar(50) NULL
)
;

CREATE TABLE DirectoresTecnicos
(
	cod_dt decimal(5) NOT NULL,
	cod_persona decimal(12) NOT NULL
)
;

CREATE TABLE Enfrenta
(
	cod_equipo_local varchar(4) NOT NULL,
	cod_equipo_visita varchar(4) NOT NULL,
	fecha_enfrentamiento date NOT NULL,
	cod_arbitro decimal(12) NOT NULL,
	estadio varchar(50) NOT NULL,
	cod_fase smallint NOT NULL,
	cod_grupo smallint NULL
)
;

CREATE TABLE Equipos
(
	cod_equipo varchar(4) NOT NULL,
	nom_equipo varchar(50) NOT NULL,
	ciudad_sede varchar (5) not null,

	cod_confe smallint NOT NULL,
	cod_dt decimal(5) NULL,
	ranking smallint NULL
)
;

CREATE TABLE Fases
(
	cod_fase smallint NOT NULL,    -- llave primaria de la fase
	nom_fase varchar(50) NULL    -- Nombre de la fase
)
;

CREATE TABLE Grupos
(
	cod_grupo smallint NOT NULL,
	nom_grupo varchar(50) NULL
)
;

CREATE TABLE Incidencias
(
	cod_equipo_local varchar(4) NOT NULL,
	cod_jugador decimal(12) NOT NULL,
	cod_equipo_visita varchar(4) NOT NULL,
	tipo_incidencia smallint NOT NULL,
	minuto integer NOT NULL,
	fecha_enfrenta date NOT NULL
)
;

CREATE TABLE Jugadores
(
	cod_jugador decimal(12) NOT NULL,
	cod_equipo varchar(4) NOT NULL,
	cod_persona decimal(12) NOT NULL,
	participaciones_historico smallint NULL,
	goles_historico smallint NULL,
	partidos_ganados_historico smallint NULL,
	partidos_empatados_historico smallint NULL,
	partidos_perdidos_historico smallint NULL
)
;

CREATE TABLE Paises
(
	cod_pais varchar(3) NOT NULL,
	nom_pais varchar(50) NULL
)
;

CREATE TABLE Participa
(
	anio_mundial smallint NOT NULL,
	cod_equipo varchar(4) NOT NULL,
	puesto smallint NULL    -- poner el puesto que queda en la participacion del torneo, 1 - campeon, 2 - segundo puesto , etc.
)
;

CREATE TABLE Personas
(
	cod_persona decimal(12) NOT NULL,
	nom_persona varchar(50) NOT NULL,
	ape_persona varchar(50) NOT NULL,
	cod_pais varchar(3) NULL,
	fecha_nac date NULL    -- fecha de nacimiento de la persona
)
;

CREATE TABLE TiposIncidencias
(
	cod_incidencia smallint NOT NULL,
	nom_incidencia varchar(50) NULL
)
;

CREATE TABLE Torneos
(
	anio smallint NOT NULL,
	cod_pais_anfitrion varchar(3) NULL,
	nom_torneo varchar(50) NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE Arbitros ADD CONSTRAINT PK_Arbitro
	PRIMARY KEY (cod_arbitro)
;

--CREATE INDEX IXFK_Arbitro_Pais ON Arbitros ()
--;

CREATE INDEX IXFK_Arbitro_Personas ON Arbitros (cod_persona ASC)
;

ALTER TABLE Ciudades ADD CONSTRAINT PK_Ciudades
	PRIMARY KEY (cod_ciudad)
;

CREATE INDEX IXFK_Ciudades_Pais ON Ciudades (cod_pais ASC)
;

ALTER TABLE Confederaciones ADD CONSTRAINT PK_Confederacion
	PRIMARY KEY (cod_confe)
;

--CREATE INDEX IXFK_Confederacion_Equipos ON Confederaciones ()
--;

ALTER TABLE DirectoresTecnicos ADD CONSTRAINT PK_Dt
	PRIMARY KEY (cod_dt)
;

CREATE INDEX IXFK_DirectoresTecnicos_Personas ON DirectoresTecnicos (cod_persona ASC)
;

--CREATE INDEX IXFK_DirectorTecnico_Pais ON DirectoresTecnicos ()
--;

ALTER TABLE Enfrenta ADD CONSTRAINT PK_Enfrentamiento
	PRIMARY KEY (cod_equipo_local,cod_equipo_visita,fecha_enfrentamiento)
;

CREATE INDEX IXFK_Enfrentamiento_Arbitro ON Enfrenta (cod_arbitro ASC)
;

CREATE INDEX IXFK_Enfrentamiento_Equipos ON Enfrenta (cod_equipo_visita ASC)
;

CREATE INDEX IXFK_Enfrentamiento_Equipos_02 ON Enfrenta (cod_equipo_visita ASC)
;

CREATE INDEX IXFK_Enfrentamiento_Fases ON Enfrenta (cod_fase ASC)
;

CREATE INDEX IXFK_Enfrentamiento_Grupos ON Enfrenta (cod_grupo ASC)
;

ALTER TABLE Equipos ADD CONSTRAINT PK_Equipos
	PRIMARY KEY (cod_equipo)
;

CREATE INDEX IXFK_Equipos_Ciudades ON Equipos (ciudad_sede ASC)
;

CREATE INDEX IXFK_Equipos_Confederaciones ON Equipos (cod_confe ASC)
;

CREATE INDEX IXFK_Equipos_DirectoresTecnicos ON Equipos (cod_dt ASC)
;

--CREATE INDEX IXFK_Equipos_DirectorTecnico ON Equipos ()
--;

ALTER TABLE Fases ADD CONSTRAINT PK_Fases
	PRIMARY KEY (cod_fase)
;

ALTER TABLE Grupos ADD CONSTRAINT PK_Grupos
	PRIMARY KEY (cod_grupo)
;

ALTER TABLE Incidencias ADD CONSTRAINT PK_Incidencias
	PRIMARY KEY (cod_equipo_local,cod_jugador,cod_equipo_visita,fecha_enfrenta,tipo_incidencia,minuto)
;

CREATE INDEX IXFK_Incidencias_Enfrentamiento ON Incidencias (cod_equipo_local ASC,cod_equipo_visita ASC)
;

CREATE INDEX IXFK_Incidencias_Enfrentamiento_02 ON Incidencias (cod_equipo_local ASC,cod_equipo_visita ASC,fecha_enfrenta ASC)
;

CREATE INDEX IXFK_Incidencias_Jugadores ON Incidencias (cod_jugador ASC)
;

CREATE INDEX IXFK_Incidencias_Plantilla ON Incidencias (cod_equipo_local ASC,cod_jugador ASC)
;

CREATE INDEX IXFK_Incidencias_Plantilla_02 ON Incidencias (cod_equipo_visita ASC,cod_jugador ASC)
;

CREATE INDEX IXFK_Incidencias_TipoIncidencia ON Incidencias (tipo_incidencia ASC)
;

ALTER TABLE Jugadores ADD CONSTRAINT PK_Jugadores
	PRIMARY KEY (cod_jugador)
;

CREATE INDEX IXFK_Jugadores_Equipos ON Jugadores (cod_equipo ASC)
;

--CREATE INDEX IXFK_Jugadores_Pais ON Jugadores ()
--;

CREATE INDEX IXFK_Jugadores_Personas ON Jugadores (cod_persona ASC)
;

ALTER TABLE Paises ADD CONSTRAINT PK_Pais
	PRIMARY KEY (cod_pais)
;

ALTER TABLE Participa ADD CONSTRAINT PK_Participaciones
	PRIMARY KEY (anio_mundial,cod_equipo)
;

CREATE INDEX IXFK_Participaciones_Equipos ON Participa (cod_equipo ASC)
;

CREATE INDEX IXFK_Participaciones_Mundiales ON Participa (anio_mundial ASC)
;

ALTER TABLE Personas ADD CONSTRAINT PK_Personas
	PRIMARY KEY (cod_persona)
;

CREATE INDEX IXFK_Personas_Pais ON Personas (cod_pais ASC)
;

ALTER TABLE TiposIncidencias ADD CONSTRAINT PK_TipoIncidencia
	PRIMARY KEY (cod_incidencia)
;

ALTER TABLE Torneos ADD CONSTRAINT PK_Mundiales
	PRIMARY KEY (anio)
;

CREATE INDEX IXFK_Mundiales_Pais ON Torneos (cod_pais_anfitrion ASC)
;

/* Create Foreign Key Constraints */

/*ALTER TABLE Arbitros ADD CONSTRAINT FK_Arbitro_PaisNacimiento
	FOREIGN KEY () REFERENCES  () ON DELETE No Action ON UPDATE No Action
;
*/

ALTER TABLE Arbitros ADD CONSTRAINT FK_Arbitro_Personas
	FOREIGN KEY (cod_persona) REFERENCES Personas (cod_persona) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Ciudades ADD CONSTRAINT FK_Ciudades_Pais
	FOREIGN KEY (cod_pais) REFERENCES Paises (cod_pais) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE DirectoresTecnicos ADD CONSTRAINT FK_DirectoresTecnicos_Personas
	FOREIGN KEY (cod_persona) REFERENCES Personas (cod_persona) ON DELETE No Action ON UPDATE No Action
;
/*
ALTER TABLE DirectoresTecnicos ADD CONSTRAINT FK_DirectorTecnico_PaisNace
	FOREIGN KEY () REFERENCES  () ON DELETE No Action ON UPDATE No Action
;*/

ALTER TABLE Enfrenta ADD CONSTRAINT FK_Enfrentamiento_ArbitroPita
	FOREIGN KEY (cod_arbitro) REFERENCES Arbitros (cod_arbitro) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Enfrenta ADD CONSTRAINT FK_Enfrentamiento_Equipos
	FOREIGN KEY (cod_equipo_visita) REFERENCES Equipos (cod_equipo) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Enfrenta ADD CONSTRAINT FK_Enfrentamiento_Equipos_Visita
	FOREIGN KEY (cod_equipo_visita) REFERENCES Equipos (cod_equipo) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Enfrenta ADD CONSTRAINT FK_Enfrentamiento_Fases
	FOREIGN KEY (cod_fase) REFERENCES Fases (cod_fase) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Enfrenta ADD CONSTRAINT FK_Enfrentamiento_Grupos
	FOREIGN KEY (cod_grupo) REFERENCES Grupos (cod_grupo) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_Confederaciones
	FOREIGN KEY (cod_confe) REFERENCES Confederaciones (cod_confe) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_DirectoresTecnicos
	FOREIGN KEY (cod_dt) REFERENCES DirectoresTecnicos (cod_dt) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_Ciudades
	FOREIGN KEY (ciudad_sede) REFERENCES Ciudades (cod_ciudad) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Incidencias ADD CONSTRAINT FK_Incidencias_Enfrentamiento
	FOREIGN KEY (cod_equipo_local,cod_equipo_visita,fecha_enfrenta) REFERENCES Enfrenta (cod_equipo_local,cod_equipo_visita,fecha_enfrentamiento) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Incidencias ADD CONSTRAINT FK_Incidencias_Jugadores
	FOREIGN KEY (cod_jugador) REFERENCES Jugadores (cod_jugador) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Incidencias ADD CONSTRAINT FK_Incidencias_TipoIncidencia
	FOREIGN KEY (tipo_incidencia) REFERENCES TiposIncidencias (cod_incidencia) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Jugadores ADD CONSTRAINT FK_Jugadores_Equipos
	FOREIGN KEY (cod_equipo) REFERENCES Equipos (cod_equipo) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Jugadores ADD CONSTRAINT FK_Jugadores_Personas
	FOREIGN KEY (cod_persona) REFERENCES Personas (cod_persona) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Participa ADD CONSTRAINT FK_Participaciones_Equipos
	FOREIGN KEY (cod_equipo) REFERENCES Equipos (cod_equipo) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Participa ADD CONSTRAINT FK_Participaciones_Mundiales
	FOREIGN KEY (anio_mundial) REFERENCES Torneos (anio) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Personas ADD CONSTRAINT FK_Personas_PaisNace
	FOREIGN KEY (cod_pais) REFERENCES Paises (cod_pais) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Torneos ADD CONSTRAINT FK_Mundiales_Pais
	FOREIGN KEY (cod_pais_anfitrion) REFERENCES Paises (cod_pais) ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON COLUMN Equipos.ciudad_sede
	IS 'Nombre ciudad'
;

COMMENT ON COLUMN Fases.cod_fase
	IS 'llave primaria de la fase'
;

COMMENT ON COLUMN Fases.nom_fase
	IS 'Nombre de la fase'
;

COMMENT ON COLUMN Participa.puesto
	IS 'poner el puesto que queda en la participacion del torneo, 1 - campeon, 2 - segundo puesto , etc.'
;

COMMENT ON COLUMN Personas.fecha_nac
	IS 'fecha de nacimiento de la persona'
;
