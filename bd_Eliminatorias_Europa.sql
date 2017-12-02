/**
Creación de la tabla de las fases
*/

create table Fases(
	cod_fase smallint,
	nomb_fase varchar (50) not null,
	
	CONSTRAINT PK_Fases PRIMARY KEY(cod_fase)
);

INSERT INTO Fases (cod_fase, nomb_fase) VALUES ('1','Fase 1');
INSERT INTO Fases (cod_fase, nomb_fase) VALUES ('2','Fase 2');

select * from Fases


/**
Creación de la tabla de los grupos
*/

create table Grupos(
	cod_grupo smallint,
	nomb_grupo varchar (50) not null,
	CONSTRAINT PK_Grupos PRIMARY KEY(cod_grupo)
);


INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('1','Grupo 1');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('2','Grupo 2');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('3','Grupo 3');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('4','Grupo 4');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('5','Grupo 5');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('6','Grupo 6');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('7','Grupo 7');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('8','Grupo 8');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('9','Grupo 9');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('10','Grupo 10');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('11','Grupo 11');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('12','Grupo 12');
INSERT INTO Grupos (cod_grupo, nomb_grupo) VALUES ('13','Grupo 13');



select * from Grupos


/**
Creación de la tabla de las confederaciones
*/
create table Confederaciones(
	cod_confe smallint,
	nombre_confe varchar (50) not null,
	
	CONSTRAINT PK_Confederacion PRIMARY KEY(cod_confe)
);

INSERT INTO Confederaciones (cod_confe, nombre_confe) VALUES ('1','AFC');
INSERT INTO Confederaciones (cod_confe, nombre_confe) VALUES ('2','CAF');
INSERT INTO Confederaciones (cod_confe, nombre_confe) VALUES ('3','Concacaf');
INSERT INTO Confederaciones (cod_confe, nombre_confe) VALUES ('4','Conmebol');
INSERT INTO Confederaciones (cod_confe, nombre_confe) VALUES ('5','OFC');
INSERT INTO Confederaciones (cod_confe, nombre_confe) VALUES ('6','UEFA');


select * from Confederaciones


/**
Creación de la tabla de los paises
*/
create table Pais(
	cod_pais varchar(3),
	nomb_pais varchar (50) not null,
	
	CONSTRAINT PK_Pais PRIMARY KEY(cod_pais)
);

INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ALB','Albania');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('AND','Andorra');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ARM','Armenia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('AUT','Austria');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('AZE','Azerbaiyan');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('BEL','Belgica');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('BIH','Bosnia y Herzegovina');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('BLR','Bielorrusia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('BUL','Bulgaria');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('CRO','Croacia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('CYP','Chipre');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('CZE','Republica Checa');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('DEN','Dinamarca');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ENG','Inglaterra');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ESP','España');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('EST','Estonia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('FIN','Finlandia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('FRA','Francia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('FRO','Isla Feroe');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('GEO','Georgia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('GER','Alemania');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('GIB','Gibraltar');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('GRE','Grecia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('HUN','Hungria');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('IRL','Republica de Irlanda');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ISL','Islandia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ISR','Israel');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ITA','Italia'); 
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('KAZ','Kazajstán');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('KVX','Kosovo');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('LIE','Liechtenstein');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('LTU','Lituania');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('LUX','Luxenburgo');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('LVA','Letonia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('MDA','Moldavia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('MKD','ARY de Macedonia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('MLT','Malta');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('MNE','Montenegro');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('NED','Paises Bajos');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('NIR','Irlanda del Norte');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('NOR','Noruega');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('POL','Polonia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('POR','Portugal');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ROU','Rumania');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SCO','Escocia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SMR','San Marino');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SRB','Serbia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SUI','Suiza');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SVK','Eslovaquia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SVN','Eslovenia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('SWE','Suecia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('TUR','Turquia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('UKR','Ucrania');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('WAL','Gales');
/* paises de mundiales */
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('URY','Uruguay');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('BRA','Brasil');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('CHL','Chile');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('MEX','Mexico');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ARG','Argentina');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('USA','EEUU');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('JPN','Corea-Japon');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ZAF','Sudafrica');
/* arbitros */
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('ESC','Escocia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('RUS','Rusia');




/* autralia */
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('AUS','Australia');
INSERT INTO Pais (cod_pais, nomb_pais) VALUES ('RUM','Rumania');


select * from pais



/**
Creación de la tabla de los tipos de incidencias en un partido
*/
create table TipoIncidencia(
	cod_incidencia smallint,
	nom_incidencia varchar (50) not null,
	
	CONSTRAINT PK_TipoIncidencia PRIMARY KEY(cod_incidencia)
);

INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('1','Titular');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('2','Suplente');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('3','Tarjeta Roja');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('4','Tarjeta Amarilla');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('5','Cambio Entra');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('6','Cambio Sale');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('7','Gol');
INSERT INTO TipoIncidencia (cod_incidencia, nom_incidencia) VALUES ('8','Falta');

Select * from TipoIncidencia

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


INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1001','Tirana','ALB');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1002','Andorra la Vieja','AND');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1003','Ereván','ARM');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1004','Viena','AUT');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1005','Baku','AZE');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1006','bruselas','BEL');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1007','Sarajevo','BIH');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1008','Minsk','BLR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1009','sofia','BUL');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1010','Zagreb','CRO');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1011','Nicosia','CYP');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1012','Praga','CZE');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1013','Copenhague','DEN');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1014','Londres','ENG');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1015','Madrid','ESP');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1016','Tallin','EST');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1017','Helsinki','FIN');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1018','paris','FRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1019','Tórshavn','FRO');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1020','Tiflis','GEO');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1021','Berlin','GER');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1022','gibaltrar','GIB');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1023','Atenas','GRE');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1024','Budapest','HUN');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1025','Dublin','IRL');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1026','Reikiavik','ISL');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1027','Jerusalen','ISR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1028','roma','ITA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1029','Astaná','KAZ');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1030','Pristina','KVX');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1031','Vaduz','LIE');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1032','Vilna','LTU');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1033','Luxemburgo','LUX');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1034','Riga','LVA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1035','Chisináu','MDA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1036','Skopie','MKD');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1037','La Valeta','MLT');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1038','Podgorica','MNE');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1039','Ámsterdam','NED');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1040','Belfast','NIR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1041','oslo','NOR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1042','Varsovia','POL');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1043','lisboa','POR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1044',' Bucarest','ROU');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1045','Edimburgo','SCO');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1046','San Marino','SMR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1047','belgrado','SRB');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1048','Suiza','SUI');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1049','Bratislava','SVK');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1050','Liubliana','SVN');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1051','estocolmo','SWE');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1052','Ankara','TUR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1053','Kiev','UKR');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1054','Cardiff','WAL');
-- ciudades de los paises que han ido al mundial
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1055','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1056','Buenos Aire','ARG');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1057','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1058','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1059','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1060','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1061','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1062','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1063','Rio de Janeiro','BRA');
INSERT INTO Ciudades (cod_ciudad, nomb_ciudad, cod_pais ) VALUES ('1064','Rio de Janeiro','BRA');



select * from ciudades



/**
Creación de la tabla de los torneos
*/

create table Torneos(
	anio smallint,
	cod_pais_anfitrion varchar (3) not null,  /* debe permitir null ya que existen 2 mundiales que no se realizaron */
	nom_torneo varchar(50) not null,
	
	CONSTRAINT FK_Mundiales_Pais FOREIGN KEY (cod_pais_anfitrion) REFERENCES Pais (cod_pais),
	CONSTRAINT PK_Mundiales PRIMARY KEY(anio)
);
CREATE INDEX IXFK_Mundiales_Pais ON Torneos(cod_pais_anfitrion);

INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1930','URY','Mundial Uruguay');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1934','ITA','Mundial Italia');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1938','FRA','Mundial Francia');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1942','','Cancelada');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1946','','Cancelada');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1950','BRA','Mundial Brasil');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1954','SUI','Mundial Suiza');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1958','SWE','Mundial Suecia');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1962','CHL','Mundial Chile');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1966','ENG','Mundial inglaterra');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1970','MEX','Mundial Mexico');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1974','GER','Mundial Alemania');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1978','ARG','Mundial Argentina');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1982','ESP','Mundial España');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1986','MEX','Mundial Mexico');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1990','ITA','Mundial Italia');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1994','USA','Mundial EEUU');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('1998','FRA','Mundial Francia');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('2002','JPN','Mundial Corea-Japon');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('2006','GER','Mundial Alemania');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('2010','ZAF','Mundial Sudafrica');
INSERT INTO Torneos (anio, cod_pais_anfitrion, nom_torneo ) VALUES ('2014','BRA','Mundial Brasil');

select * from Torneos

/*
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


/* albania */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60001','Etrit','Berisha','ALB','10/10/2000');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60002','Andi','Lila','ALB','01/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60003','Ermir','Lenjani','ALB','02/02/1993');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60004','Elseid','Hysaj','ALB','10/02/1994');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60005','Frederic','Veseli','ALB','11/02/1990');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60006','Berat','Djimsiti','ALB','08/08/1994');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60007','Ansi','Agolli','ALB','07/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60008','Migjen','Basha','ALB','10/10/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60009','Edgar','Cani','ALB','01/04/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60010','Armando','Sadiku','ALB','02/06/1988');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60011','Orges','Shehi','ALB','03/07/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60012','Burim','Kukeli','ALB','04/03/1984');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60013','Taulant','Xhaka','ALB','05/05/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60014','Mërgim','Mavraj','ALB','06/07/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60015','Sokol','Cikalleshi','ALB','07/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60016','Naser','Aliji','ALB','08/07/1982');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60017','Bekim','Balaj','ALB','09/05/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60018','Ergys','Kaçe','ALB','10/07/1995');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60019','Odise','Roshi','ALB','11/11/2000');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60020','Amir','Abrashi','ALB','03/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60021','Alban','Hoxha','ALB','01/12/1998');		


select * from personas where cod_pais = 'ALB'

/* Andorra*/
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60022','José  Antonio','Gómes','AND','03/04/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60023','Ferran ','Pol','AND','07/05/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60024','Marc ','Vales','AND','05/05/2000');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60025','Emili ','García','AND','07/15/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60026','Ildefons ','Lima ','AND','05/06/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60027','Mañas ','Fabricio','AND','12/17/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60028','Max ','Llovera','AND','03/28/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60029','Marc ','García Renom','AND','03/27/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60030','Jordi',' Rubio Gómez','AND','07/27/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60031','Cristian',' Martínez Alejo','AND','03/03/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60032','Marc',' Pujol','AND','03/24/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60033','Marcio',' Vieira','AND','07/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60034','Ludovic',' Clemente','AND','01/12/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60035','Sergi',' Moreno','AND','12/22/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60036','Jordi',' Alaez','AND','12/27/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60037','Moises',' San Nicolas','AND','03/19/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60038','Victor Hugo',' Moreira','AND','09/25/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60039','Gabi',' Riera','AND','11/20/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60040','Aarón',' Sánchez','AND','02/24/1997');


select * from personas where cod_pais = 'AND'


/* Armenia */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60041','Arsen','Bergaryan','ARM','01/21/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60042','Gael','Andonian','ARM','03/19/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60043','Tigran','Barseghyan','ARM','04/11/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60044','Hovhannes','Hambardzumyan','ARM','05/06/1998');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60045','R','Hovsepyan','ARM','01/19/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60046','Gegam','kadimyan','ARM','10/10/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60047','Edgar','Malakyan','ARM','08/16/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60048','Artem','miakelyan','ARM','04/24/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60049','Henrik','Mkthitaryan','ARM','01/21/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60050','Aras','Ozbiliz','ARM','12/18/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60051','marcos','Pizelli','ARM','02/21/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60052','G.','Dashbashyan','ARM','11/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60053','Artak','Grigoryan','ARM','09/09/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60054','Varazadat','Haroyan','ARM','08/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60055','K.','Hovhannisyan','ARM','01/19/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60056','H.','Iskahanyan','ARM','03/17/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60057','Ruslan','koryan','ARM','08/16/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60058','Gor','manukiyan','ARM','04/24/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60059','A.','meliktseyan','ARM','01/21/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60060','Artem','Simonyan','ARM','07/19/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60061','E.','vardanyan','ARM','02/02/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60062','Artak','yedirgayan','ARM','03/04/1987');

select * from personas where cod_pais = 'ARM'

/* Austria */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60063','Robert','Almer','AUT','03/20/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60064','Heinz','Lindner','AUT','04/22/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60065','Ramazan','Özcan','AUT','06/08/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60066','György','Garics','AUT','06/04/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60067','Aleksandar ','Dragovic','AUT','06/03/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60068','Martin ','Hinteregger','AUT','07/09/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60069','Christian ','Fuchs','AUT','07/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60070','Markus ','Suttner','AUT','04/04/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60071','Sebastian ','Prödl','AUT','06/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60072','Kevin ','Wimmer','AUT','12/11/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60073','Florian ','Klein','AUT','11/17/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60074','Stefan ','Ilsanker','AUT','12/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60075','David ','Alaba','AUT','06/24/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60076','Zlatko ','Junuzovic','AUT','09/26/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60077','Martin ','Harnik','AUT','10/16/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60078','Julian ','Baumgartlinger','AUT','02/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60079','Alessandro ','Schöpf','AUT','07/02/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60080','Marcel ','Sabitzer','AUT','03/17/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60081','Jakob ','Jantscher','AUT','11/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60082','Marko ','Arnautovic','AUT','06/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60083','Karl ','Bouma','AUT','03/22/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60084','Lukas ','Hinterseer','AUT','03/28/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60085','Marc ','Janko','AUT','06/25/1983');

select * from personas where cod_pais = 'AUT'

/* AZERBAYAN */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60086','Kamran ','Agayev','AZE','01/03/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60087','Salahat ','Aghayev','AZE','02/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60088','Mahir ','Shukurov','AZE','10/11/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60089','Elnur ','Allahverdiyev','AZE','11/09/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60090','Ufuk ','Budak','AZE','12/12/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60091','Rasim ','Ramaldanov','AZE','11/05/188');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60092','Ali ','Gökdemir','AZE','01/03/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60093','Ilkin ','Qirtimov','AZE','02/07/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60094','Emin ','Jafarguliyev','AZE','03/27/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60095','Emin ','Nouri','AZE','01/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60096','Magomed ','Mirzabekov','AZE','03/03/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60097','Vagif ','Javadov','AZE','05/07/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60098','Ruslan ','Abisov','AZE','10/09/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60099','Javid ','Huseynov','AZE','07/07/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60100','Rahid ','Amirguliyev','AZE','07/05/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60101','Afran ','Ismayilov','AZE','05/04/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60102','Tugrul ','Erat','AZE','09/08/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60103','Abdulla ','Abatsiyev','AZE','07/03/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60104','Ilter ','Tashkin','AZE','07/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60105','Cihan ','Özkara','AZE','01/06/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60106','Dimitrij ','Nazarov','AZE','03/07/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60107','Rufat ','Dadashov','AZE','05/05/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60108','Rauf ','Aliyev','AZE','01/03/1997');


select * from personas where cod_pais = 'AZE'


/* BELGICA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60109','Thibaut ','Courtois','BEL','11/05/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60110','Toby ','Alderweireld','BEL','02/03/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60111','Thomas ','Vermaelen','BEL','04/11/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60112','Vincent ','Kompany','BEL','10/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60113','Jan ','Vertonghen','BEL','04/04/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60114','Axel ','Witsel','BEL','12/01/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60115','Kevin ','de Bruyne','BEL','08/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60116','Marouane ','Fellaini','BEL','02/11/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60117','Romelu ','Lukaku','BEL','03/05/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60118','Eden ','Hazard','BEL','07/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60119','Kevin ','Mirallas','BEL','05/05/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60120','Simon ','Mignolet','BEL','06/05/1888');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60121','Koen ','Casteels','BEL','05/04/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60122','Dries ','Mertens','BEL','06/05/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60123','Thomas ','Meunier','BEL','12/09/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60124','Steven ','Defour','BEL','05/04/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60125','Youri ','Tielemans','BEL','07/05/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60126','Yannick ','Ferreira','BEL','04/09/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60127','Mousa ','Dembélé','BEL','06/06/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60128','Christian ','Benteke','BEL','03/12/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60129','Thorgan ','Hazard','BEL','09/03/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60130','Michy ','Batshuayi','BEL','10/02/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60131','Laurent ','Ciman','BEL','05/08/1985');


select * from personas where cod_pais = 'BEL'


/* BOSNIA Y HERSEGOVINA BIH */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60132','Asmir','Begovic','BIH'		,'01/01/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60133','Asmir','Avdukic','BIH'		,'10/10/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60134','Jasmin','Fejzic','BIH'		,'02/02/1995');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60135','Ognjen','Vranješ','BIH'		,'11/03/1992');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60136','Ermin','Bicakcic','BIH'		,'03/10/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60137','Avdija','Vršajevic','BIH'	,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60138','Mensur','Mujdža','BIH'		,'04/09/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60139','Emir','Spahic','BIH'		,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60140','Sead','Kolašinac','BIH'		,'05/10/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60141','Toni','Šunjic','BIH'		,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60142','Muhamed','Bešic','BIH'		,'06/11/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60143','Miralem','Pjanic','BIH'		,'04/21/1990');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60144','Senijad','Ibricic','BIH'	,'07/22/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60145','Sejad','Salihovic','BIH'	,'01/12/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60146','Haris','Medunjanin','BIH'	,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60147','Senad','Lulic','BIH'		,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60148','Izet','Hajrovic','BIH'		,'09/13/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60149','Anel','Hadžic','BIH'		,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60150','Tino-Sven','Sušic','BIH'	,'10/14/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60151','Edin','Džeko','BIH'			,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60152','Vedad','Ibiševic','BIH'		,'11/15/1983');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60153','Edin','Višca','BIH'			,'09/29/1997');


select * from personas where cod_pais = 'BIH'

/* BIELORRUSIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60177','Aleksey','Rios','BLR'			,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60178','Sergei','Polotevich','BLR'		,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60179','Aleksey','Yanushkevich','BLR'	,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60180','Denis','Polyakov','BLR'			,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60181','Ivan','Maevsky','BLR'			,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60182','Stanislav','Dragun','BLR'		,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60183','Siarhey','Balanovich','BLR'		,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60184','Aleksandr','Karnitskiy','BLR'	,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60185','Nikita','Korsun','BLR'			,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60186','Pavel','Nekhajchik','BLR'		,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60187','Aton','Sarakova','BLR'			,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60188','Igor','Burko','BLR'				,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60189','Artem','Bykov','BLR'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60190','Oleg','Evdokimov','BLR'			,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60191','Aleksei','Gavrilovich','BLR'	,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60192','Aleksandr','Gutor','BLR'		,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60193','Sergey','Ignatovich','BLR'		,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60194','Yuri','Kovalev','BLR'			,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60195','Sergey','Matvejchik','BLR'		,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60196','Aleksandr','Sachivko','BLR'		,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60197','Maksim','Skvysh','BLR'			,'01/22/1993');

select * from personas where cod_pais = 'BLR'

/* BULGARIA BUL*/ 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60198','Plamen','Iliev','BUL'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60199','Strahil','Popov','BUL'		,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60200','Nicolay','Bodurov','BUL'	,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60201','Vasil','Bozhikov','BUL'		,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60202','Petar','Zanev','BUL'		,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60203','Stanislav','Manolev','BUL'	,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60204','Simeon','Slavchev','BUL'	,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60205','Georgi','Kotstadinov','BUL'	,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60206','Todor','Nedelev','BUL'		,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60207','Andrey','Galabinov','BUL'	,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60208','Spas','Delev','BUL'			,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60209','Ivaylo','Dimitrov','BUL'	,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60210','Bozhidar','Kraev','BUL'		,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60211','Bozidar','Chorbadzhiyski','BUL','03/11/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60212','Blagoy','Makendzhiev','BUL'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60213','Kristiyan','Malinov','BUL'		,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60214','Bozhidar','Mitrev','BUL'		,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60215','Anton','Nedyalkov','BUL'		,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60216','Tvvetomir','Panov','BUL'		,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60217','Martin','Raynov','BUL'			,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60218','Aleksandar','Tsvetkov','BUL'	,'01/22/1993');

select * from personas where cod_pais = 'BUL'


/* CROACIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60219','Dominik','Livakovic','CRO'	,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60220','Šime','Vrsaljko','CRO'		,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60221','Ivan','Strinic','CRO'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60222','Ivan','Perišic','CRO'		,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60223','Matej','Mitrovic','CRO'		,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60224','Dejan','Lovren','CRO'		,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60225','Ivan','Rakitic','CRO'		,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60226','Nikola','Vlašic','CRO'		,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60227','Andrej','Kramaric','CRO'	,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60228','Luka','Modric','CRO'		,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60229','Marcelo','Brozovic','CRO'	,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60230','Lovre','Kalinic','CRO'		,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60231','Zoran','Nižic','CRO'		,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60232','Ante','Rebic','CRO'		,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60233','Marko','Rog','CRO'		,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60234','Nikola','Kalinic','CRO'		,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60235','Mario','Mandžukic','CRO'	,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60236','Filip','Bradaric','CRO'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60237','Marin','Leovac','CRO'		,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60238','Mario','Pasalic','CRO'		,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60239','Domagoj','Vida','CRO'		,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60240','Josip','Pivaric','CRO'		,'04/21/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60241','Danijel','Subašic','CRO'	,'07/22/1987');

select * from personas where cod_pais = 'CRO'

/* CHIPRE */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60242','Antonis','Georgallides','CYP'	,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60243','Giorgos','Loizou','CYP'			,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60244','Christos','Mastrou','CYP'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60245','Dossa','Júnior','CYP'			,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60246','Elias','Charalambous','CYP'		,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60247','Giorgos','Merkis','CYP'			,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60248','Valentinos','Sielis','CYP'		,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60249','Charis','Kyriakou','CYP'		,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60250','Marios','Antoniades','CYP'		,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60251','Marios','Stylianou','CYP'		,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60252','Paraskevas','Christou','CYP'	,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60253','Giorgos','Pelagias','CYP'		,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60254','Efstathios','Aloneftis','CYP'	,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60255','Constantinos','Charalambid','CYP' 	,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60256','Nektarios','Alexandrou','CYP'		,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60257','Constantinos','Makrides','CYP'		,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60258','Charalambos','Kyriakou','CYP'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60259','Giorgos','Aresti','CYP'				,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60260','Georgios','Efrem','CYP'				,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60261','Kostakis','Artymatas','CYP'			,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60262','Vincent','Laban','CYP'				,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60263','Marios','Nicolaou','CYP'			,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60264','Nestoras','Mitidis','CYP'			,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60265','Demetris','Christofi','CYP'			,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60266','Andreas','Papathanasiou','CYP'		,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60267','Andreas','Makris','CYP'				,'04/22/1991');


select * from personas where cod_pais = 'CYP'


/* REPUBLICA CHECA*/
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60268','Tomáš ','Vaclík','CZE','09/03/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60269','Tomáš ','Koubek','CZE','05/01/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60270','Pavel ','Kaderábek','CZE','05/06/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60271','Michal ','Kadlec','CZE','03/12/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60272','Theodor ','Gebre','CZE','04/12/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60273','Roman ','Hubník','CZE','06/06/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60274','Tomáš ','Sivok','CZE','05/09/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60275','David ','Limberský','CZE','06/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60276','Daniel ','Pudil','CZE','07/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60277','Borek ','Dockal','CZE','10/09/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60278','Tomáš ','Rosický','CZE','04/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60279','Jaroslav ','Plašil','CZE','05/01/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60280','Daniel ','Kolár','CZE','07/05/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60281','David ','Pavelka','CZE','08/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60282','Josef ','Šural','CZE','10/05/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60283','Ladislav ','Krejcí','CZE','05/06/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60284','Vladimír ','Darida','CZE','08/08/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60285','Tomáš ','Necid','CZE','03/08/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60286','Milan ','Škoda','CZE','06/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60287','Jirí ','Skalák','CZE','02/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60288','David ','Lafata','CZE','06/09/1991');

select * from personas where cod_pais = 'CZE'

/* DINAMARCA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60289','Kasper ','Schmeichel','DEN','05/11/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60290','Peter ','Ankersen','DEN','02/09/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60291','Jannik ','Vestergaard','DEN','03/08/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60292','Simon ','Kjær','DEN','06/03/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60293','Riza ','Durmisi','DEN','08/01/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60294','Andreas ','Christensen','DEN','10/06/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60295','William ','Kvist','DEN','04/02/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60296','Thomas ','Delaney','DEN','03/09/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60297','Nicolai ','Jørgensen','DEN','05/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60298','Christian ','Eriksen','DEN','04/02/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60299','Viktor ','Fischer','DEN','09/06/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60300','Andreas ','Bjelland','DEN','01/06/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60301','Mathias ','Jørgensen','DEN','03/04/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60302','Erik ','Sviatchenko','DEN','04/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60303','Pione ','Sisto','DEN','04/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60304','Jonas ','Lössl','DEN','01/02/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60305','Jens ','Stryger','DEN','02/03/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60306','Rasmus ','Falk','DEN','07/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60307','Lasse ','Schöne','DEN','09/08/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60308','Yussuf ','Poulsen','DEN','05/06/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60309','Andreas ','Cornelius','DEN','06/03/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60310','Frederik ','Rønnow','DEN','01/12/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60311','Pierre ','Højbjerg','DEN','05/08/1995');


select * from personas where cod_pais = 'DEN'

/* INGLATERRA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60312','Joe ','Hart','ENG','10/10/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60313','Jack ','Butland','ENG','10/03/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60314','Kyle ','Walker','ENG','08/05/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60315','Ryan ','Bertrand','ENG','05/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60316','Gary ','Cahill','ENG','09/12/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60317','Phil ','Jones','ENG','01/02/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60318','Chris ','Smalling','ENG','02/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60319','Aaron ','Cresswell','ENG','05/12/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60320','Harry ','Maguire','ENG','05/03/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60321','John ','Stones','ENG','08/05/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60322','Kieran ','Trippier','ENG','09/09/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60323','Michael ','Keane','ENG','11/01/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60324','Jordan ','Henderson','ENG','12/16/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60325','Raheem ','Sterling','ENG','08/12/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60326','Eric ','Dier','ENG','10/01/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60327','Dele ','Alli','ENG','11/04/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60328','Alex ','Oxlade','ENG','12/08/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60329','Jake ','Livermore','ENG','10/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60330','Jesse ','Lingard','ENG','11/12/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60331','Harry ','Winks','ENG','02/02/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60332','Fabian ','Delph','ENG','01/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60333','Harry ','Kane','ENG','08/07/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60334','Jermain ','Defoe','ENG','07/10/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60335','Daniel ','Sturridge','ENG','01/09/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60336','Marcus',' Rashford','ENG','01/10/1997');

select * from personas where cod_pais = 'ENG'

/* españa */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60337','David','de Gea','ESP','07/09/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60338','Álvaro','Odriozola','ESP','12/12/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60339','Gerard','Piqué','ESP','02/02/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60340','Nacho','Fernández','ESP','11/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60341','Sergio','Busquets','ESP','10/06/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60342','Andrés ','Iniesta','ESP','12/05/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60343','Álvaro ','Morata','ESP','03/10/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60344','José ','Callejón','ESP','11/02/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60345','Suso ','Fernández','ESP','09/11/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60346','Thiago ','Alcántara','ESP','11/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60347','Vitolo ','Machín','ESP','02/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60348','Marc ','Bartra','ESP','05/01/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60349','Kepa ','Arrizabalaga','ESP','03/10/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60350','Saúl ','Ñíguez','ESP','01/11/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60351','Sergio ','Ramos','ESP','10/03/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60352','Alberto ','Moreno','ESP','05/04/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60353','Iago ','Aspas','ESP','01/08/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60354','Jordi ','Alba','ESP','01/03/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60355','Rodrigo ','Moreno','ESP','06/03/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60356','Marco ','Asensio','ESP','01/01/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60357','David ','Silva','ESP','08/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60358','Isco ','Alarcón','ESP','01/04/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60359','Pepe ','Reina','ESP','11/08/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60360','Asier ','Illarramendi','ESP','08/03/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60361','Luis Alberto','Romero','ESP','08/11/1992');

select * from personas where cod_pais = 'ESP'



/* FINLANDIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60362','Lassi ','Hurskainen','FIN'	,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60363','Lukas ','','FIN'			,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60364','Jere',' Uronen','FIN'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60365','Paulus',' Arajuuri','FIN'	,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60366','Sebastian',' Sorsa','FIN'	,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60367','Tero',' Mäntylä'	,'FIN'	,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60368','Roman',' Eremenko'	,'FIN'	,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60369','Tim',' Spar','FIN'			,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60370','Përparim',' Hetemaj','FIN'	,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60371','Alexander',' Ring'	,'FIN'	,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60372','Riku',' Riski','FIN'		,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60373','Toni','Kolehmainen','FIN'	,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60374','Mehmet',' Hetemaj','FIN'	,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60375','Kasper','Hämäläine','FIN'	,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60376','Erfan',' Zeneli','FIN'		,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60377','Moshtagh',' Yaghoub','FIN'	,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60378','Sakari',' Mattila'	,'FIN'	,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60379','Teemu',' Pukki','FIN'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60380','Berat',' Sadik','FIN'		,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60381','Joelv',' Pohjanpalo','FIN'	,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60382','Tim',' Väyrynen','FIN'		,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60383','Timo','Furuholm','FIN'		,'11/01/1997');

select * from personas where cod_pais = 'FIN'

/* FRANCIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60384','Hugo','Lloris'		,'FRA','01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60385','Steve','Mandanda'	,'FRA','10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60386','Alphonse','Areola'	,'FRA','02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60387','Christophe','Jallet','FRA','11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60388','Layvin','Kurzawa'	,'FRA','03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60389','Raphaël','Varane'	,'FRA','09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60390','Samuel','Umtiti'	,'FRA','04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60391','Lucas','Digne'		,'FRA','08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60392','Djibril','Sidibé'	,'FRA','05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60393','Laurent','Koscielny','FRA','07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60394','Presnel','Kimpembe'	,'FRA','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60395','Corentin','Tolisso'	,'FRA','04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60396','Thomas','Lemar'		,'FRA','07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60397','Dimitri','Payet'	,'FRA','01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60398','NGolo','Kanté'		,'FRA','08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60399','Blaise','Matuidi'	,'FRA','03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60400','Adrien','Rabiot'	,'FRA','09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60401','Moussa','Sissoko'	,'FRA','04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60402','Antoine','Griezmann','FRA','10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60403','Olivier','Giroud'	,'FRA','07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60404','Kingsley','Coman'	,'FRA','11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60405','Kylian','Mbappé'	,'FRA','09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60406','Alexandre','Lacazette'	,'FRA','12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60407','Florian','Thauvin'		,'FRA','01/22/1993');



select * from personas where cod_pais = 'FRA'

/* ISLA FEROE */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60408','Gunnar','Nielsen','FRO'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60409','Tórður','Thomsen','FRO'		,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60410','Teitur','Gestsson','FRO'	,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60411','Jonas','por  Nas','FRO'		,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60412','Rógvi','Baldvinsson','FRO'	,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60413','Pól','Justinussen','FRO'	,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60414','Viljormur','Davidsen','FRO'	,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60415','Sonni','Nattestad','FRO'	,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60416','Gunnar','Haraldsen','FRO'	,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60417','Fródi','Benjaminsen','FRO'	,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60418','Christian','Holst','FRO'	,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60419','Hallur','Hansson','FRO'		,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60420','Heini','Vatnsdal','FRO'		,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60421','Karl','Lokin','FRO'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60422','Kaj','Leo','FRO'			,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60423','Daniel','Udsen','FRO'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60424','Jóan','Símun','FRO'			,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60425','Klamint','Olsen','FRO'		,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60426','Gilli','Sorensen','FRO'		,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60427','Símun','Samuelsen','FRO'	,'11/01/1997');

select * from personas where cod_pais = 'FRO'

/* GEORGIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60428','Giorgi','Loria','GEO'		,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60429','Ucha','Lobjanidze','GEO'	,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60430','Solomon','KvirkveliA','GEO'	,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60431','Guram','KashiA','GEO'		,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60432','Aleksandr','Amisulashvili','GEO','10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60433','Zurab','Khizanishvili','GEO'	,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60434','Jaba','Kankava','GEO'			,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60435','Valeri','Qazaishvili','GEO'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60436','Tornike','Okriashvili','GEO'	,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60437','Jano','Ananidze','GEO'			,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60438','Mate','Vatsadze','GEO'			,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60439','Nukri','Revishvili','GEO'		,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60440','Giorgi','Makaridze','GEO'		,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60441','Bachana','Tskhadadze','GEO'		,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60442','Giorgi','Merebashvili','GEO'	,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60443','Nika','Kvekveskiri','GEO'		,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60444','Georgi','Popkhadze','GEO'		,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60445','Levan','Kenia','GEO'			,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60446','Giorgi','Gvelesiani','GEO'		,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60447','Murtaz','Daushvili','GEO'		,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60448','Otar','Kakabadze','GEO'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60449','Giorgi','Navalovski'	,'GEO'	,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60450','Levan','Mchedlidze','GEO'		,'07/28/1999');

select * from personas where cod_pais = 'GEO'



/* ALEMANIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60451','Kevin','Trapp'					,'GER','03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60452','Niklas','Süle'					,'GER','09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60453','Marvin','Plattenhardt'			,'GER','04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60454','Matthias','Ginter'				,'GER','08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60455','Mats','Hummels'					,'GER','05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60456','Sami','Khedira'					,'GER','07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60457','Julian','Draxler'				,'GER','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60458','Toni','Kroos'					,'GER','04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60459','Sandro','Wagner'				,'GER','07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60460','Mesut','ozil'					,'GER','01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60461','Timo','Werner'					,'GER','08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60462','Bernd','Leno'					,'GER','03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60463','Lars','Stindl'					,'GER','09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60464','Emre','Can'						,'GER','04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60465','Amin','Younes'					,'GER','10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60466','Antonio','Rüdiger'				,'GER','07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60467','Jérôme','Boateng'				,'GER','11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60468','Joshua','Kimmich'				,'GER','09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60469','Mario','Gotze'					,'GER','12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60470','Julian','Brandt'				,'GER','11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60471','Ilkay','Gündogan'				,'GER','12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60472','Marc-André','ter-stegen'		,'GER','01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60473','Sebastian','Rudy'				,'GER','03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60474','Leroy','Sané'					,'GER','09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60475','Marcel','Halstenberg'			,'GER','12/10/1990');


select * from personas where cod_pais = 'GER'

*/ GIBRALTAR */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60476','Jordan','Pérez'		,'GIB','01/01/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60477','Scott','Wiseman'	,'GIB','10/10/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60478','Joseph','Chipolina'	,'GIB','02/02/1995');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60479','Dean','Torrilla'	,'GIB','11/03/1992');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60480','Ryan','Casciaro'	,'GIB','03/10/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60481','Roy','Chipolina'	,'GIB','09/04/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60482','Jeremy','López'		,'GIB','04/09/1985');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60483','Aaron','Payas'		,'GIB','08/23/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60484','Kyle','Casciaro'	,'GIB','05/10/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60485','Liam','Walker'		,'GIB','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60486','George','Cabrera'	,'GIB','06/11/1999');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60487','Jayce','Olivero'	,'GIB','04/21/1990');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60488','Jamie','Robba'		,'GIB','07/22/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60489','James','Bosio'		,'GIB','01/12/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60490','Erin','Barnett'		,'GIB','08/10/1989');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60491','Robert','Montovio'	,'GIB','03/27/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60492','Anthony','Bardon'	,'GIB','09/13/1987');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60493','Anthony','Hernández','GIB','04/10/1996');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60494','Jamie','Coombes'	,'GIB','10/14/1986');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60495','JeanCarlos','Garcia','GIB','07/28/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60496','Robert','Guilling'	,'GIB','11/15/1983');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60497','Michael','Yome'		,'GIB','09/29/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60498','Kyle','Goldwin'		,'GIB','12/10/1990');

select * from personas where cod_pais = 'GIB'                                                                                                                  

/* GRECIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60499','Orestis','Karnezis'		,'GRE','09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60500','Stefanos','Kapino'		,'GRE','04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60501','Panagiotis','Glykos'	,'GRE','10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60502','Giorgios','Tzavelas'	,'GRE','07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60503','Sokratis','Papastathopoulos','GRE','08/23/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60504','Vasilis','Torosidis'		,'GRE','05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60505','Loukas','Vyntra'			,'GRE','07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60506','Vangelis','Moras'			,'GRE','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60507','Kostas','Manolas'			,'GRE','04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60508','José','Holebas'				,'GRE','07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60509','Alexandros','Tziolis'		,'GRE','01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60510','Giannis','Fetfatzidis'		,'GRE','09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60511','Giannis','Maniatis'			,'GRE','04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60512','Andreas','Samaris'			,'GRE','10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60513','Panagiotis','Kone'			,'GRE','07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60514','Lazaros','Christodoulopoulos'	,'GRE','09/13/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60515','Panagiotis','Tachtsidis'		,'GRE','04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60516','Kostas','Katsouranis'			,'GRE','10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60517','Dimitris','Salpingidis'			,'GRE','07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60518','Theofanis','Gekas'				,'GRE','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60519','Georgios','Samaras'				,'GRE','04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60520','Konstantinos','Mitroglou'		,'GRE','07/22/1991');	


   select * from personas where cod_pais = 'GRE'                                                                                                                                     

/* HUNGRIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60521','Gábor','Király',		'HUN','09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60522','Dénes','Dibusz',		'HUN','04/09/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60523','Péter','Gulácsi',	'HUN','08/23/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60524','Ádám','Lang',		'HUN','05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60525','Mihály','Korhut',	'HUN','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60526','Tamás','Kádár',		'HUN','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60527','Attila','Fiola',		'HUN','04/21/1990');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60528','Ádám','Pintér',		'HUN','07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60529','Richárd','Guzmics',	'HUN','01/12/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60530','Barnabás','Bese',	'HUN','09/04/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60531','Roland','Juhász',	'HUN','04/09/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60532','Ákos','Elek',		'HUN','08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60533','Balázs','Dzsudzsák',	'HUN','05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60534','Ádám','Nagy',		'HUN','07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60535','Dániel','Böde',		'HUN','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60536','Gergo','Lovrencsics','HUN','07/11/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60537','László','Kleinheisler',	'HUN','08/23/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60538','Zoltán','Stieber',		'HUN','05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60539','Ádám','Szalai',			'HUN','07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60540','Zoltán','Gera',			'HUN','06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60541','Krisztián','Németh',		'HUN','04/21/1990');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60542','Nemanja','Nikolic',		'HUN','07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60543','Tamás','Priskin',		'HUN','01/12/1997');

select * from personas where cod_pais = 'HUN'  


/* IRLANDA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60544','Keiren','Westwood',	'IRL','01/01/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60545','Colin','Doyle',		'IRL','10/10/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60546','Darren','Randolph',	'IRL','02/02/1995');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60547','Cyrus','Christie',	'IRL','11/03/1992');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60548','Ciaran','Clark',	'IRL','03/10/1991');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60549','John','OShea',		'IRL','09/04/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60550','Paul','McShane',	'IRL','04/09/1985');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60551','Shane','Duffy',		'IRL','08/23/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60552','Conor','Hourihane',	'IRL','05/10/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60553','Stephen','Ward',	'IRL','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60554','Glenn','Whelan',	'IRL','06/11/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60555','Aiden','McGeadY',	'IRL','04/21/1990');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60556','Robbie','Brady',	'IRL','07/22/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60557','James','McClean',	'IRL','01/12/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60558','Callum','ODowda',	'IRL','08/10/1989');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60559','Jeff','Hendrick',	'IRL','03/27/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60560','Wes','Hoolahan',	'IRL','09/13/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60561','David','Meyler',	'IRL','04/10/1996');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60562','Harry','Arter',		'IRL','10/14/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60563','Daryl','Murphy',	'IRL','07/28/1999');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60564','Shane','Long',		'IRL','11/15/1983');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60565','Scott','Hogan',		'IRL','09/29/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60566','Kevin','Long',		'IRL','12/10/1990');	
                                                                                                                         
select * from personas where cod_pais = 'IRL'  

/* ISLANDIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60567','Hannes','pórHalldórsson',	'ISL','01/01/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60568','Ögmundur','Kristinsson',	'ISL','10/10/1987');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60569','Ingvar','Jónsson',			'ISL','02/02/1995');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60570','Rúnar','Alex-Rúnarsson',	'ISL','11/03/1992');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60571','Ragnar','Sigurðsson',		'ISL','03/10/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60572','Sverrir','Ingi-Ingason',	'ISL','09/04/1989');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60573','Kári','Árnason',			'ISL','04/10/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60574','Hörður','Björgvin-MagnússoN',	'ISL','11/03/1992');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60575','Hjörtur','Hermannsson',			'ISL','03/10/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60576','Ari','Freyr Skúlason',			'ISL','09/04/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60577','Birkir','Már-Sævarsson',		'ISL','04/09/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60578','Haukur','Heiðar-Hauksson',		'ISL','08/23/1986');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60579','Aron','Gunnarsson',				'ISL','05/10/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60580','Emil','Hallfreðsson',			'ISL','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60581','Rúnar','Már-Sigurjónsson',		'ISL','06/11/1999');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60582','Birkir','Bjarnason',		'ISL','11/03/1992');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60583','Arnór','Ingvi-Traustason',	'ISL','03/10/1991');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60584','Elmar','Bjarnason',			'ISL','09/04/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60585','Gylfi','Sigurðsson',		'ISL','04/09/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60586','Jóhann','Berg-Guðmundsson',	'ISL','08/23/1986');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60587','Alfreð','Finnbogason',		'ISL','05/10/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60588','Kolbeinn','Sigþórsson',		'ISL','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60589','Jón Daði','Böðvarsson',		'ISL','06/11/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60590','Eiður','Guðjohnsen',		'ISL','03/10/1991');	

select * from personas where cod_pais = 'ISL'  


/* ISRAEL */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60591','Ofir','Marciano'		,'ISR','01/01/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60592','Ariel','Harush'			,'ISR','10/10/1987');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60593','Boris','Klaiman'		,'ISR','02/02/1995');				
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60594','Eitan','Tibi'			,'ISR','11/03/1992');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60595','Rami','Gershon'			,'ISR','03/10/1991');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60596','Sheran','Yeini'			,'ISR','09/04/1989');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60597','Shir','Tzedek'			,'ISR','04/09/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60598','Eli','Dasa'				,'ISR','08/23/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60599','Taleb','Tawatha'		,'ISR','05/10/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60600','Dor','Elo'				,'ISR','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60601','Bibras','Natkho'		,'ISR','06/11/1999');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60602','Lior','Refaelov'		,'ISR','04/21/1990');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60603','Eran','Zahavi'			,'ISR','07/22/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60604','Beram','Kayal'			,'ISR','01/12/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60605','Nir','Biton'			,'ISR','08/10/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60606','Almog','Cohen'			,'ISR','03/27/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60607','Dan','Einbinder'		,'ISR','09/13/1987');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60608','David','Keltjens'		,'ISR','04/10/1996');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60609','Dor','Micha'			,'ISR','10/14/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60610','Ben','Sahar'			,'ISR','07/28/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60611','Tomer','Hemed'			,'ISR','11/15/1983');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60612','Tal','Ben-Haim'			,'ISR','09/29/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60613','Itay','Shechter'		,'ISR','12/10/1990');	
                                                                                                                               
select * from personas where cod_pais = 'ISR'  

/* ESTONIA */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60614','Sergei','Pareiko'			,'EST','01/01/1985');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60615','Mihkel','Aksalu'			,'EST','10/10/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60616','Marko','Meerits'			,'EST','02/02/1995');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60617','Artur','Kotenko'			,'EST','11/03/1992');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60618','Pavel','Londak'				,'EST','03/10/1991');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60619','Maksim','Podholjuzin'			,'EST','09/04/1989');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60620','Mikk','Reintam'				,'EST','04/09/1985');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60621','Igor','Morozov'				,'EST','08/23/1986');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60622','Ragnar','Klavan'			,'EST','05/10/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60623','Enar','Jaager'				,'EST','07/21/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60624','Ken','Kallaste'				,'EST','06/11/1999');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60625','Taijo','Teniste'			,'EST','04/21/1990');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60626','Gert','Kams'				,'EST','07/22/1991');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60627','Dmitri','Kruglov'			,'EST','01/12/1997');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60628','Ilja','Antonov'				,'EST','08/10/1989');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60629','Sander','Puri'				,'EST','03/27/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60630','Siim','Luts'				,'EST','09/13/1987');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60631','Konstantin','Vassiljev'		,'EST','04/10/1996');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60632','Sergei','Mošnikov'			,'EST','10/14/1986');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60633','Joel','Lindpere'			,'EST','07/28/1999');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60634','Ats','Purje'				,'EST','11/15/1983');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60635','Tarmo','Kink'				,'EST','09/29/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60636','Henrik','Ojamaa'			,'EST','12/10/1990');		
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60637','Henri','Anier'				,'EST','11/01/1997');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60638','Vladimir','Voskoboinikov'	,'EST','12/10/1990');	
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60639','Rimo','Hunt'				,'EST','11/01/1997');	

select * from personas where cod_pais = 'EST'  


-- Italia
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60939','Gianluigi','BUFFON','ITA','01/28/1978');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60640','Daniele','DE ROSSI','ITA','04/07/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60641','Andrea','BARZAGLI','ITA','8/05/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60642','Domenico','CRISCITO','ITA','10/12/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60643','Riccardo','MONTOLIVO','ITA','08/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60644','Giorgio','CHIELLINI','ITA','04/08/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60645','Graziano','PELLE','ITA','05/07/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60646','Matteo','DARMIAN','ITA','02/12/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60647','Ciro','IMMOBILE','ITA','10/02/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60648','Giacomo','BONAVENTURA','ITA','02/08/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60649','Antonio','CANDREVA','ITA','08/02/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60650','Stephan','EL SHAARAWY','ITA','07/10/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60651','Mattia','PERIN','ITA','10/11/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60652','Federico','MARCHETTI','ITA','07/02/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60653','Marco','VERRATTI','ITA','05/11/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60654','Angelo','OGBONNA','ITA','03/05/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60655','Leonardo','BONUCCI','ITA','01/05/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60656','Davide','ASTORI','ITA','07/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60657','Mattia','DE SCIGLIO','ITA','10/10/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60658','Alessandro','FLORENZI','ITA','11/03/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60659','Manolo','Gabbiadini','ITA','06/11/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60660','Luca','Antonelli','ITA','11/02/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60661','Simone','SCUFFET','ITA','01/05/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60662','Marco','PAROLO','ITA','05/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60663','Nicolo','BARELLA','ITA','07/02/1997');
                                                                                       
-- Kazajstán                                                                         
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60666','Samat','Smakov','KAZ','08/12/1978');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60667','Alexandr','MOKIN','KAZ','09/06/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60668','Renat','ABDULIN','KAZ','04/04/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60669','Yuriy','LOGVINENKO','KAZ','02/07/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60670','David','LORIYA','KAZ','01/10/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60671','Alexandr','KISLITSYN','KAZ','08/03/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60672','Tanat','NUSSERBAYEV','KAZ','01/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60673','Azat','NURGALIYEV','KAZ','10/06/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60674','Bauyrzhan','ISLAMKHAN','KAZ','03/02/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60675','Dmitriy','SHOMKO','KAZ','09/03/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60676','Sergey','Khizhnichenko','KAZ','07/07/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60677','Viktor','DMITRENKO','KAZ','04/04/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60678','Yeldos','AKHMETOV','KAZ','01/06/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60679','Aleksei','Shchetkin','KAZ','11/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60680','Samat','OTARBAYEV', 'KAZ','08/02/1990');
                                                                                        
-- Kosovo                                                                               
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60683','Adis','NURKOVIC','KVX','01/01/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60684','Alban','MEHA','KVX','06/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60685','Valon','BERISHA','KVX','07/02/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60686','Albert','Bunjaku','KVX','09/11/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60687','Besart','Berisha','KVX','01/01/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60688','Samir','UJKANI','KVX','05/07/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60689','Erton','Fejzullahu','KVX','07/02/1985');
                                                                                        
-- Liechtenstein                                                                        
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60692','Peter','JEHLE','LIE','02/01/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60693','Franz','BURGMEIER','LIE','07/04/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60694','Martin','BUECHEL','LIE','09/02/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60695','Philippe','ERNE','LIE','04/12/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60696','Benjamin','BUECHEL','LIE','04/07/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60697','Cengiz','BICER','LIE','11/12/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60698','Yves','OEHRI','LIE','05/03/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60699','Michele','POLVERINO','LIE','06/09/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60700','Martin','RECHSTEINER','LIE','01/01/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60701','Daniel','KAUFMANN','LIE','02/12/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60702','Ivan','QUINTANS','LIE','05/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60703','Sandro','Wieser','LIE','03/02/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60704','Nicolas','HASLER','LIE','04/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60705','Niklas','KIEBER','LIE','04/03/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60706','Philipp','OSPELT','LIE','07/10/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60707','Robin','GUBSER','LIE','07/04/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60708','Seyhan','YILDIZ','LIE','03/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60709','Andreas','CHRISTEN','LIE','09/08/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60710','Sandro','WOLFINGER','LIE','04/08/1991');
                                                                                        
-- Lituania                                                                             
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60713','Deividas','CESNAUSKIS','LTU','10/06/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60714','Tomas','Radzinevicius','LTU','05/06/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60715','Tomas','MIKUCKIS','LTU','10/01/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60716','Linas','Klimavicius','LTU','10/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60717','Arunas','KLIMAVICIUS','LTU','05/10/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60718','Darvydas','SERNAS','LTU','12/07/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60719','Vytautas','Luksa','LTU','04/08/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60720','Tadas','KIJANSKAS','LTU','06/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60721','Vaidas','SLAVICKAS','LTU','06/02/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60722','Ernestas','SETKUS','LTU','05/05/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60723','Valdemar','BOROVSKIJ','LTU','02/05/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60724','Vytautas','ANDRIUSKEVICIUS','LTU','08/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60725','Deivydas','MATULEVICIUS','LTU','08/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60726','Arvydas','NOVIKOVAS','LTU','08/12/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60727','Egidijus','VAITKUNAS','LTU','08/07/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60728','Emilijus','ZUBAS','LTU','10/07/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60729','Karolis','CHVEDUKAS','LTU','01/04/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60730','Georgas','FREIDGEIMAS','LTU','10/08/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60731','Martynas','Dapkus','LTU','06/02/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60732','Fiodor','Cernych','LTU','01/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60733','Vaidas','Silenas','LTU','06/07/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60734','Lukas','Spalvis','LTU','07/07/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60735','Arturas','ZULPA','LTU','10/06/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60736','Mantas','Kuklys','LTU','10/06/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60737','Nerijus','VALSKIS','LTU','04/08/1987');
                                                                                        
-- Luxenburgo                                                                           
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60740','Aurelien','JOACHIM','LUX','10/08/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60741','Mario','MUTSCH','LUX','03/09/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60742','Daniel','DA MOTA','LUX','11/08/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60743','Stefano','BENSI','LUX','11/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60744','Lars','GERSON','LUX','05/02/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60745','Jonathan','JOUBERT','LUX','12/09/1979');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60746','Ben','PAYAL','LUX','08/09/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60747','Mathias','JAENISCH','LUX','07/08/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60748','Kevin','MALGET','LUX','05/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60749','Tom','LATERZA','LUX','09/05/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60750','Dwayn','HOLTER','LUX','05/06/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60751','Maurice','DEVILLE','LUX','11/07/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60752','Laurent','JANS','LUX','05/08/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60753','Chris','PHILIPPS','LUX','08/03/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60754','Ricardo Aleixo','Delgado','LUX','02/02/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60755','Nicolo','BARELLA','LUX','07/02/1986');
                                                                                        
-- Letonia                                                                              
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60758','Andris','VANINS','LVA','10/04/1980');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60759','Aleksejs','VISNAKOVS','LVA','10/02/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60760','Girts','Karlsons','LVA','07/06/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60761','Olegs','LAIZANS','LVA','08/04/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60762','Ivans','LUKJANOVS','LVA','04/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60763','Kaspars','GORKSS','LVA','06/11/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60764','Artjoms','RUDNEVS','LVA','10/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60765','Vladimirs','KAMESS','LVA','08/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60766','Artis','LAZDINS','LVA','03/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60767','Vitalijs','MAKSIMENKO','LVA','08/12/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60768','Arturs','ZJUZINS','LVA','11/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60769','Valerijs','SABALA','LVA','12/08/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60770','Kaspars','IKSTENS','LVA','05/06/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60771','Kaspars','DUBRA','LVA','10/12/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60772','Igors','TARASOVS','LVA','11/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60773','Deniss','Rakels','LVA','10/08/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60774','Vladislavs','GABOVS','LVA','11/07/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60775','Vitalijs','JAGODINSKIS','LVA','08/02/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60776','Arturs','Karasauskas','LVA','09/01/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60777','Eduards','Visnakovs','LVA','10/05/1990');
                                                                                        
-- Moldavia                                                                             
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60780','Victor','GOLOVATENCO','MDA','08/04/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60781','Vitalie','BORDIAN','MDA','11/08/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60782','Alexandru','GATCAN','MDA','07/03/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60783','Serghei','PASCENCO','MDA','08/12/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60784','Igor','ARMAS','MDA','04/07/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60785','Vadym','BOLOKHAN','MDA','01/01/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60786','Igor','BUGAEV','MDA','06/06/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60787','Nicolai','CALANCEA','MDA','01/01/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60788','Eugeniu','CEBOTARU','MDA','06/10/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60789','Alexandru','EPUREANU','MDA','07/09/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60790','Stanislav','NAMASCO','MDA','10/11/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60791','Igor','TIGIRLAS','MDA','04/02/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60792','Igor','PICUSCIAC','MDA','07/03/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60793','Artur','Ionita','MDA','07/08/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60794','Petru','RACU','MDA','07/07/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60795','Alexandr','Pascenco','MDA','08/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60796','Alexandru','Dedov','MDA','06/07/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60797','Eugeniu','SIDORENCO','MDA','09/03/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60798','Ion','JARDAN','MDA','10/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60799','Alexandru','Antoniuc','MDA','03/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60800','Ilie','CEBANU','MDA','09/12/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60801','Gheorghe','Andronic','MDA','05/09/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60802','Andrei','COJOCARI','MDA','11/01/1987');
                                                                                        
-- ARY de Macedonia                                                                     
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60805','Goran','PANDEV','MKD','07/07/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60806','Ivan','Trickovski','MKD','08/04/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60807','Daniel','MOJSOV','MKD','05/12/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60808','Vance','Sikov','MKD','10/07/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60809','Besart','Ibraimi','MKD','10/01/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60810','Arijan','ADEMI','MKD','09/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60811','Ferhan','Hasani','MKD','08/06/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60812','Martin','BOGATINOV','MKD','06/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60813','Stefan','RISTOVSKI','MKD','12/02/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60814','Stefan','SPIROVSKI','MKD','03/08/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60815','Aleksandar','TRAJKOVSKI','MKD','05/09/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60816','Ostoja','STJEPANOVIC','MKD','07/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60817','Adis','JAHOVIC','MKD','08/03/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60818','David','MITOV NILSSON','MKD','12/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60819','David','BABUNSKI','MKD','01/03/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60820','Ezdjan','ALIOSKI','MKD','12/02/1992');
                                                                                       
-- Malta                                                                                
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60823','Alexander','MUSCAT','MLT','04/12/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60824','Gareth','SCIBERRAS','MLT','09/03/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60825','Michael','MIFSUD','MLT','07/04/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60826','Justin','HABER','MLT','09/06/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60827','Roderick','BRIFFA','MLT','04/08/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60828','Andrew','HOGG','MLT','02/03/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60829','Henry','BONELLO','MLT','11/10/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60830','Jonathan','CARUANA','MLT','04/07/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60831','Andrei','AGIUS','MLT','12/08/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60832','Clayton','FAILLA','MLT','08/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60833','Ryan','CAMILLERI','MLT','07/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60834','Steve','Borg','MLT','05/05/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60835','Mark','Scerri','MLT','06/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60836','Ryan','FENECH','MLT','10/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60837','Paul','FENECH','MLT','10/12/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60838','Andre','SCHEMBRI','MLT','07/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60839','Samuel','MAGRI','MLT','10/03/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60840','Bjorn','KRISTENSEN','MLT','05/04/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60841','Rowen','MUSCAT','MLT','05/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60842','Jacob','BORG','MLT','02/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60843','Clifford','GATT','MLT','09/02/1988');
                                                                                        
-- Montenegro                                                                          
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60846','Vukasin','POLEKSIC','MNE','10/08/1982'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60847','Mirko','VUCINIC','MNE','10/10/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60848','Mladen','BOZOVIC','MNE','10/08/1984'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60849','Elsad','ZVEROTIC','MNE','10/10/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60850','Stevan','JOVETIC','MNE','02/11/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60851','Marko','BASA','MNE','09/12/1982'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60852','Fatos','BECIRAJ','MNE','05/05/1988'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60853','Nemanja','Nikolic','MNE','01/01/1988'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60854','Zarko','TOMASEVIC','MNE','02/02/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60855','Nebojsa','KOSOVIC','MNE','04/02/1995'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60856','Stefan','SAVIC','MNE','08/01/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60857','Luka','DJORDJEVIC','MNE','09/07/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60858','Srefan','MUGOSA','MNE','06/02/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60859','Marko','BAKIC','MNE','01/11/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60860','Nikola','VUKCEVIC','MNE','03/12/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60861','Marko','Vesovic','MNE','08/08/1991');
                                                                                       
-- Paises Bajos                                                                         
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60864','Maarten','STEKELENBURG','NED','02/09/1982'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60865','Arjen','ROBBEN','NED','03/01/1984'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60866','Wesley','SNEIJDER','NED','09/06/1984'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60867','Ryan','BABEL','NED','09/12/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60868','Robin','VAN PERSIE','NED','06/08/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60869','Michel','VORM','NED','10/10/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60870','Siem','DE JONG','NED','08/01/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60871','Jeremain','LENS','NED','04/11/1987'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60872','Stefan','DE VRIJ','NED','05/02/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60873','Joel','VELTMAN','NED','05/01/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60874','Sergio','PADT','NED','06/06/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60875','Patrick','VAN AANHOLT','NED','09/08/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60876','Jeffrey','BRUMA','NED','03/11/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60877','Daryl','JANMAAT','NED','02/07/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60878','Nick','VIERGEVER','NED','03/08/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60879','Daley','BLIND','NED','09/03/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60880','Leroy','FER','NED','05/01/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60881','Kevin','STROOTMAN','NED','03/02/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60882','Georginio','Wijnaldum','NED','01/11/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60883','Bas','Dost','NED','01/05/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60884','Luuk','DE JONG','NED','07/08/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60885','Terence','KONGOLO','NED','04/02/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60886','Karim','REKIK','NED','02/12/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60887','Jetro','WILLEMS','NED','10/03/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60888','Nathan','AKE','NED','08/02/1995'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60889','Memphis','DEPAY','NED','03/02/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60890','Tonny','Vilhena','NED','03/01/1995'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60891','Luciano','NARSINGH','NED','03/09/1990'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60892','Jeroen','ZOET','NED','06/01/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60893','Jordy','CLASIE','NED','07/06/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60894','Bruno','MARTINS INDI','NED','08/02/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60895','Jasper','CILLESSEN','NED','02/04/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60896','Marco','VAN GINKEL','NED','01/12/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60897','Davy','KLAASSEN','NED','01/02/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60898','Quincy','PROMES','NED','04/01/1992'); 
                                                                                        
-- Irlanda del Norte                                                                    
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60901','Roy','CARROLL','NIR','10/09/1977');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60902','Aaron','Hughes','NIR','08/11/1979');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60903','Alan','MANNUS','NIR','09/05/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60904','Steven','DAVIS','NIR','01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60905','Michael','McGOVERN','NIR','12/07/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60906','Chris','BRUNT','NIR','04/12/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60907','Gareth','McAuley','NIR','05/12/1979');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60908','Kyle','Lafferty','NIR','06/09/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60909','Jonny','EVANS','NIR','03/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60910','Jamie','WARD','NIR','12/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60911','Niall','MCGINN','NIR','10/07/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60912','Ryan','McGIVERN','NIR','08/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60913','Corry','EVANS','NIR','10/07/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60914','William','GRIGG','NIR','03/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60915','Oliver','NORWOOD','NIR','12/04/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60916','Rory','McARDLE','NIR','01/05/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60917','Lee','HODSON','NIR','02/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60918','Craig','CATHCART','NIR','06/02/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60919','Shane','FERGUSON','NIR','12/07/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60920','Trevor','CARSON','NIR','05/03/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60921','Ryan','McLAUGHLIN','NIR','10/09/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60922','George','SAVILLE','NIR','01/06/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60923','Daniel','LAFFERTY','NIR','08/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60924','Josh','Magennis','NIR','05/08/1990');
                                                                                       
-- Noruega                                                                              
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60927','Rune','ALMENNING JARSTEIN','NOR','09/09/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60928','Tore','REGINIUSSEN','NOR','10/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60929','Orjan','Nyland','NOR','10/09/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60930','André','Hansen','NOR','01/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60931','Tom','Hogli','NOR','04/02/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60932','Martin','Linnes','NOR','01/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60933','Stian','Ringstad','NOR','01/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60934','Brede','Hangeland','NOR','10/06/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60935','Håvard','Nordtveit','NOR','01/06/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60936','Johan','Ladre Bjordal','NOR','05/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60937','Vegard','Forren','NOR','10/02/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60938','Stefan','Johansen','NOR','08/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('69939','Jone','Samuelsen','NOR','06/07/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60940','Morten','Gamst Pedersen','NOR','08/09/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60941','Alexander','Tettyusky','NOR','04/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60942','Valon','Berisha','NOR','07/02/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60943','Per','CILJAN SKJELBRED','NOR','06/06/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60944','Joshua','King','NOR','05/01/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60945','Martin','Odegaard','NOR','07/12/1998');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60946','Bjorn','Johnsen','NOR','06/11/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60947','Tarik','Elyounoussi','NOR','03/02/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60948','Anders','Konradsen','NOR','01/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60949','Ruben','Yttergård Jenssen','NOR','01/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60950','André','Danielsen','NOR','01/01/1990');
                                                                                        
-- Polonia                                                                              
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60953','Wojciech','Szczesny','POL','08/04/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60954','Artur','Boruc','POL','10/02/1980');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60955','Lukasz','Fabianski','POL','08/04/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60956','Michal','Pazdan','POL','01/09/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60957','Artur','Jedrzejczyk','POL','04/09/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60958','Thiago','Rangel Cionek','POL','01/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60959','Igor','Lewczuk','POL','10/05/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60960','Kamil','Glik','POL','03/02/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60961','Bartosz','Salamon','POL','01/05/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60962','Lukasz','Piszczek','POL','03/06/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60963','Tomasz','Jodlowiec','POL','08/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60964','Karol','Linetty','POL','02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60965','Grzegorz','Krychowiak','POL','09/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60966','Kamil','Grosicki','POL','08/06/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60967','Maciej','Rybus','POL','09/08/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60968','Jakub','Blaszczykowski','POL','04/12/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60969','Piotr','Zielinski','POL','10/05/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60970','Bartosz','Kapustka','POL','03/12/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60971','Arkadiusz','Milik','POL','08/02/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60972','Robert','Lewandowski','POL','01/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60973','Lukasz','Teodorczyk','POL','03/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60974','Kamil','Wilczek','POL','04/01/1988');
                                                                                        
-- Portugal                                                                             
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60977','Rui','Patricio','POR','05/02/1988'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60978','José','Sá','POR','07/01/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60979','Beto','Bastos','POR','01/05/1982'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60980','Bruno','Alves','POR','07/11/1981'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60981','Képler','Lima Ferreira','POR','06/02/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60982','Luís','Novo Neto','POR','06/05/1988'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60983','Raphael','Guerreiro','POR','02/12/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60984','José','Fonte','POR','02/12/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60985','Nélson','Semedo','POR','06/12/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60986','Eliseu','Pereira','POR','01/10/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60987','Cédric','Soares','POR','11/08/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60988','Joao','Moutinho','POR','05/09/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60989','Danilo','Pereira','POR','09/09/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60990','William','Carvalho','POR','07/04/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60991','André','Gomes','POR','10/07/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60992','Pizzi','Fernandes','POR','06/10/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60993','Adrien','Silva','POR','05/03/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60994','Cristiano','Ronaldo','POR','05/02/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60995','André','Silva','POR','06/11/1995'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60996','Bernardo','Silva','POR','10/08/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60997','Luis','Almeida','POR','07/11/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60998','Gelson','Martins','POR','11/05/1995'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('60999','Ricardo','Quaresma','POR','06/09/1983'); 
                                                                                       
-- Rumania                                                                              
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61002','Costel','Pantilimon','ROU','01/02/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61003','Ciprian','Tatarusanu','ROU','09/02/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61004','Silviu','Lung Junior','ROU','04/06/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61005','Romario','Benzar','ROU','06/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61006','Cosmin','Moti','ROU','03/12/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61007','Vlad','Chiriches','ROU','04/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61008','Iasmin','Latovlevici','ROU','11/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61009','Alin','Tosca','ROU','04/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61010','Dragos','Grigore','ROU','07/09/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61011','Cristian','Sapunaru','ROU','05/04/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61012','Alexandru','Chipciu','ROU','08/05/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61013','Adrian','Popa','ROU','04/07/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61014','Nicolae','Stanciu','ROU','07/05/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61015','Alexandru','Maxim','ROU','08/07/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61016','Andrei','Prepelita','ROU','08/12/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61017','Razvan','Marin','ROU','03/05/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61018','Florin','Andone','ROU','11/04/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61019','Claudiu','Keseru','ROU','02/12/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61020','Bogdan','Stancu','ROU','08/06/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61021','Denis','Alibec','ROU','05/01/1991');
                                                                                       
-- Escocia                                                                             
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61024','Craig','Gordon','SCO','01/12/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61025','Kieran','Tierney','SCO','05/06/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61026','Andrew','Robertson','SCO','01/03/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61027','Christophe','Berra','SCO','01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61028','Charles','Mulgrew','SCO','06/03/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61029','James','Morrison','SCO','05/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61030','Stuart','Armstrong','SCO','10/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61031','Scott','Brown','SCO','05/06/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61032','Leigh','Griffiths','SCO','10/08/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61033','Robert','Snodgrass','SCO','07/09/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61034','Ikechi','Anya','SCO','03/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61035','David','Marshall','SCO','05/03/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61036','James','McArthur','SCO','07/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61037','Steven','Naismith','SCO','04/09/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61038','Barry','Bannan','SCO','01/12/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61039','Darren','Fletcher','SCO','01/02/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61040','James','Forrest','SCO','07/07/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61041','Russell','Martin','SCO','04/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61042','Chris','Martin','SCO','04/11/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61043','Ryan','Fraser','SCO','04/02/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61044','Tom','Cairney','SCO','10/01/1991');
                                                                                       
-- San Marino                                                                          
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61047','Aldo','Simoncini','SMR','10/08/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61048','Danilo','Rinaldi','SMR','08/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61049','Adolfo','Hirsch','SMR','11/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61050','Giacomo','Muraccini','SMR','11/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61051','Elia','Benedettini','SMR','11/02/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61052','Davide','Cesarini','SMR','11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61053','Andrea','Grandoni','SMR','01/04/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61054','Michele','Cevoli','SMR','02/01/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61055','Fabio','Vitaioli','SMR','03/01/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61056','Alessandro','Della Valle','SMR','04/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61057','Cristian','Brolli','SMR','05/01/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61058','Alex','Gasperoni','SMR','06/01/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61059','Michael','Battistini','SMR','01/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61060','Maicol','Berretti','SMR','1/07/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61061','Alessandro','Golinucci','SMR','08/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61062','Michele','Cervellini','SMR','09/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61063','Luca','Tosi','SMR','10/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61064','Mattia','Stefanelli','SMR','11/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61065','Fabio','Tomassini','SMR','12/01/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61066','Marco','Bernardi','SMR','01/01/1990');
                                                                                        
-- Serbia                                                                               
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61069','Vladimir','Stojkovic','SRB','08/07/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61070','Ivan','Obradovic','SRB','05/07/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61071','Nenad','Tomovic','SRB','10/08/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61072','Nemanja','Gudelj','SRB','06/11/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61073','Branislav','Ivanovic','SRB','11/02/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61074','Zoran','Tosic','SRB','08/04/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61075','Radosav','Petrovic','SRB','08/03/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61076','Aleksandar','Mitrovic','SRB','06/09/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61077','Dusan','Tadic','SRB','10/11/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61078','Aleksandar','Kolarov','SRB','10/11/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61079','Nemanja','Matic','SRB','01/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61080','Darko','Brasanac','SRB','12/02/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61081','Luka','Milivojevic','SRB','07/04/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61082','Filip','Kostic','SRB','01/11/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61083','Andrija','Zivkovic','SRB','11/07/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61084','Ljubomir','Fejsa','SRB','04/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61085','Bojan','Krkic','SRB','08/08/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61086','Adem','Ljajic','SRB','09/09/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61087','Lazar','Markovic','SRB','02/03/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61088','Zeljko','Brkic','SRB','09/07/1986');
                                                                                       
-- Suiza                                                                                
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61091','Yann','Sommer','SUI','07/12/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61092','Marwin','Hitz','SUI','08/09/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61093','Roman','Burki','SUI','04/11/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61094','Stephan','Lichtsteiner','SUI','06/01/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61095','Fabian','Schar','SUI','10/12/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61096','Timm','Klose','SUI','09/05/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61097','Nico','Elvedi','SUI','10/09/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61098','Renato','Steffen','SUI','03/11/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61099','Blerim','Dzemaili','SUI','12/04/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61100','Gelson','Fernandes','SUI','12/09/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61101','Denis','Zakaria','SUI','10/11/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61102','Xherdan','Shaqiri','SUI','10/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61103','Reto','Ziegler','SUI','06/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61104','Granit','Xhaka','SUI','07/09/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61105','Edimilson','Fernandes','SUI','05/04/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61106','Shani','Tarashaj','SUI','07/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61107','Breel','Embolo','SUI','04/02/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61108','Valentin','Stocker','SUI','12/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61109','Admir','Mehmedi','SUI','06/03/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61110','Eren','Derdiyok','SUI','12/06/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61111','Haris','Seferovic','SUI','02/02/1992');
                                                                                        
-- Eslovaquia                                                                           
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61114','Marek','BAKOS','SVK','05/04/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61115','Martin','SKRTEL','SVK','05/12/1984'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61116','Viktor','PECOVSKY','SVK','04/05/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61117','Jan','DURICA','SVK','10/12/1981'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61118','Peter','PEKARIK','SVK','10/10/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61119','Tomas','Hubocan','SVK','07/09/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61120','Marek','HAMSIK','SVK','07/07/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61121','Kornel','SALATA','SVK','04/01/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61122','Matúš','KOZÁCIK','SVK','07/12/1983'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61123','Vladimir','WEISS','SVK','10/11/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61124','Martin','DUBRAVKA','SVK','05/01/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61125','Robert','PICH','SVK','12/11/1988'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61126','Róbert','MAK','SVK','08/03/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61127','Lukas','PAUSCHEK','SVK','09/12/1992');
                                                                                        
-- Eslovenia                                                                            
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61130','Jan','Oblak','SVN','07/01/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61131','Nejc','Skubic','SVN','10/06/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61132','Bostjan','Cesar','SVN','09/07/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61133','Branko','Ilic','SVN','06/02/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61134','Josip','Ilicic','SVN','09/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61135','Jasmin','Kurtic','SVN','10/01/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61136','Zlatan','Ljubijankic','SVN','05/12/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61137','Valter','Birsa','SVN','07/08/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61138','Milivoje','Novakovic','SVN','08/05/1979');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61139','Bojan','Jokic','SVN','07/05/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61140','Andraz','Kirm','SVN','06/09/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61141','Nejc','Pecnik','SVN','03/01/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61142','Kevin','Kampl','SVN','09/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61143','Rene','Krhin','SVN','11/05/1990');
                                                                                        
-- Suecia                                                                              
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61146','Andreas','GRANQVIST','SWE','06/04/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61147','Sebastian','LARSSON','SWE','06/06/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61148','Oscar','WENDT','SWE','04/10/1985'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61149','Marcus','BERG','SWE','07/08/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61150','Mikael','LUSTIG','SWE','03/12/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61151','Ola','TOIVONEN','SWE','03/07/1986'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61152','Martin','OLSSON','SWE','07/05/1988'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61153','Albin','EKDAL','SWE','08/07/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61154','Kristoffer','NORDFELDT','SWE','03/06/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61155','Jimmy','DURMAZ','SWE','02/03/1989'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61156','Linus','WAHLQVIST','SWE','01/11/1996'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61157','Oscar','HILJEMARK','SWE','08/06/1992'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61158','Pontus','JANSSON','SWE','03/02/1991'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61159','Alexander','FRANSSON','SWE','02/04/1994'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61160','Andreas','LINDE','SWE','04/07/1993'); 
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61161','Ken','SEMA','SWE','10/09/1993'); 
                                                                                       
-- Turquia                                                                              
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61164','Volkan','Babacan','TUR','11/08/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61165','Atila','Turan','TUR','10/04/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61166','Ismail','Koybasi','TUR','10/07/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61167','Serdar','Aziz','TUR','03/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61168','Okay','Yokuslu','TUR','09/03/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61169','Ozan','Tufan','TUR','03/03/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61170','Selcuk','Inan','TUR','10/02/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61171','Cenk','Tosun','TUR','07/06/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61172','Hakan','Calhanoglu','TUR','08/02/1994');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61173','Oguzhan','Ozyakup','TUR','03/09/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61174','Enes','Unal','TUR','10/05/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61175','Yunus','Malli','TUR','04/02/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61176','Çaglar','Soyuncu','TUR','03/03/1996'); 
                                                                                        
-- Ucrania                                                                             
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61179','Denys','Boyko','UKR','09/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61180','Mykola','Morozyuk','UKR','07/01/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61181','Yevhen','Jacheridi','UKR','08/07/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61182','Anatoliy','Timoshchuk','UKR','10/03/1979');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61183','Oleksandr','Kucher','UKR','02/10/1982');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61184','Taras','Stepanenko','UKR','08/08/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61185','Andriy','Yarmolenko','UKR','03/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61186','Román','Zozulia','UKR','07/11/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61187','Viktor','Kovalenko','UKR','04/02/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61188','Yevhen','Konoplyanka','UKR','09/09/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61189','Yevhen','Seleznyov','UKR','10/07/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61190','Andriy','Pyatov','UKR','08/06/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61191','Viacheslav','Shevchuk','UKR','03/05/1979');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61192','Ruslan','Rotan','UKR','09/10/1981');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61193','Dmitro','Chigrinskiy','UKR','07/11/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61194','Serhiy','Sydorchuk','UKR','02/05/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61195','Artem','Fedetskiy','UKR','10/04/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61196','Denís','Garmash','UKR','10/04/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61197','Yaroslav','Rakitski','UKR','3/08/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61198','Oleksandr','Zinchenko','UKR','11/12/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61199','Vladlen','Yurchenko','UKR','12/01/1994');
                                                                                        
-- Gales                                                                               
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61202','Wayne','Hennessey','WAL','04/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61203','Owain','Williams','WAL','07/03/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61204','Ashley','Williams','WAL','03/08/1984');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61205','James','Chester','WAL','03/01/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61206','James','Collins','WAL','03/08/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61207','Ben','Davies','WAL','04/04/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61208','Neil','Taylor','WAL','07/02/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61209','Chris','Gunter','WAL','|1/06/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61210','Andy','King','WAL','09/10/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61211','Aaron','Ramsey','WAL','06/12/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61212','Joe','Allen','WAL','04/03/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61213','Joe','Ledley','WAL','03/01/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61214','Jonny','Williams','WAL','09/10/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61215','David','Vaughan','WAL','08/02/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61216','David','Edwards','WAL','03/02/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61217','David','Cotterill','WAL','04/12/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61218','Gareth','Bale','WAL','06/07/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61219','Sam','Vokes','WAL','01/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61220','Simon','Church','WAL','10/12/1988');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61221','George','Williams','WAL','07/09/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('61222','Hal','Robson','WAL','01/05/1989');

/* DIRECTORES TECNICOS */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62001','Gianni','De Biasi','ITA'			,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62002','Koldo','Álvarez','AND'				,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62003','Artur','Petrosyan','ARM'			,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62004','Marcel','Koller','SUI'				,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62005','Gurban','Gurbanov','AZE'			,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62006','Roberto','Martínez','ESP'			,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62007','Mehmed','Ba?darevic','BIH'			,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62008','Alyaksandr','Khatskevich','BLR'		,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62009','Petar','Hubchev','BUL'				,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62010','Ante','Cacic','CRO'					,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62011','Pambos','Christodoulou','CYP'		,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62012','Karel','Jarolim','CZE'				,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62013','Åge','Hareide','NOR'				,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62014','Cosmin','Contra','ENG'				,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62015','Julen','Lopetegui','ESP'			,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62016','Magnus','Pehrsson','SWE'			,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62017','Markku','Kanerva','FIN'				,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62018','Didier','Deschamps','FRA'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62019','Lars','Olsen','DEN'					,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62020','Vladimír','Weiss','SVK'				,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62021','Joachim','Löw','GER'				,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62022','Jeff','Wood','ENG'					,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62023','Otto','Rehhagel','GRE'				,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62024','Georges','Leekens','BEL'			,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62025','Martin','ONeill','IRL'				,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62026','Heimir','Hallgrímsson','ISL'		,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62027','Elisha','Levy','ISR'				,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62028','Giampiero','Ventura'   ,'ITA'		,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62029','Aleksandr','Borodyuk'  ,'RUS'		,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62030','Albert','Bunjaki','KVX'				,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62031','Rene','Pauritsch','AUS'				,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62032','Edgaras','Jankauskas'  ,'LTU'		,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62033','Luc','Holtz','LUX'					,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62034','Marian','Pahars','LVA'				,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62035','Igor','Dobrovolski','RUS'			,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62036','Igor','Angelovski','MKD'			,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62037','Tom','Saintfiet','GER'				,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62038','Ljubi?a','Tumbakovic','MNE'			,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62039','Dick','Advocaat','NED'				,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62040','Michael','ONeill','NIR'			,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62041','Lars','Lagerbäck','SWE'				,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62042','Adam','Nawalka','POL'				,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62043','Fernando','Santos','POR'			,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62044','Cosmin','Contra','ROU'				,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62045','Malky','Mackay','SCO'				,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62046','Pierangelo','Manzaroli','SMR'		,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62047','Mladen','Krstajic','SRB'			,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62048','Vladimir','Petkovic','BIH'			,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62049','Ján','Kozák','SVK'					,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62050','Srecko','Katanec','SVN'				,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62051','Erik','Hamrén','SWE'				,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62052','Mircea','Lucescu','RUM'				,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62053','Andriy','Shevchenko','UKR'			,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('62054','Chris','Coleman','WAL'				,'03/07/1995');

/* Arbitros */
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63001','Deniz','Aytekin','GER'				,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63002','Felix','Brych','GER'				,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63003','Felix','Zwayer','GER'				,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63004','Manuel','Gräfe','GER'				,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63005','Tobias','Stiele','GER'				,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63006','Tobias','Welz','GER'				,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63007','Zaven','Hovhannisyan','ARM'			,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63008','Harald','Lechner','AUT'				,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63009','Manuel','Schuettengruber','AUT'		,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63010','Oliver','Drachta','AUT'				,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63011','Robert','Schörgenhofer','AUT'		,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63012','Aliyar','Aghayev','AZE'				,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63013','Bart','Vertenten','BEL'				,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63014','Sébastien','Delfeiere','BEL'		,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63015','Aleksei','Kulbakov','BLR'			,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63016','Ognjen','Valjic','BIH'				,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63017','Georgi','Kabakov','BUL'				,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63018','Ivaylo','Stoyanov','BUL'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63019','Nikola','Popov','BUL'				,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63020','Christos','Nicolaides','CYP'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63021','Fran','Jovic','CRO'					,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63022','Ivan','Bebek','CRO'					,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63023','Jakob','Kehle','DEN'				,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63024','Bobby','Madden','ESC'				,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63025','Craig','Thomson','ESC'				,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63026','John','Beaton','ESC'				,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63027','Kevin','Clancy','ESC'				,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63028','William','Collu','ESC'				,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63029','Ivan','Kru?liak','SVK'				,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63030','Damir','Skomina','SVN'				,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63031','Matej','Jug','SVN'					,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63032','Slavko','Vincic','SVN'				,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63033','Alberto','Undiano Mallenco','ESP'	,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63034','Antonio','Mateu Lahoz','ESP'		,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63035','Antonio Miguel','Mateu Lahoz','ESP'	,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63036','Carlos','del Cerro Grande','ESP'	,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63037','David','Fernández Borbalán','ESP'	,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63038','Javier','Estrada Fernández','ESP'	,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63039','Jesús','Gil Manzano','ESP'			,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63040','Ville','Nevalainen','FIN'			,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63041','Benoît','Bastien','FRA'				,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63042','Clément','Turpin','FRA'				,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63043','Ruddy','Buquet','FRA'				,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63044','Tony','Chapron','FRA'				,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63045','Lee','Evans','WAL'					,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63046','Giorgi','Kruashvili','GEO'			,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63047','Anastasios','Sidiropulos','GRE'		,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63048','Charalambos','Kalogeropoulos','GRE'	,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63049','Tasos','Sidiropoulos','GRE'			,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63050','István','Vad','HUN'					,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63051','Tamás','Bognar','HUN'				,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63052','Viktor','Kassai','HUN'				,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63053','Andre','Marriner','ENG'				,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63054','Anthony','Taylor','ENG'				,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63055','Craig','Pawson','ENG'				,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63056','Mark','Clattenburg','ENG'			,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63057','Martin','Atkinson','ENG'			,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63058','Michael','Oliver','ENG'				,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63059','Arnold','Hunter','NIR'				,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63060','Neil','Doyle','IRL'					,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63061','Thorvaldur','Árnason','ISL'			,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63062','Alon','Yefet','ISR'					,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63063','Liran','Liany','ISR'				,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63064','Orel','Grinfeeld','ISR'				,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63065','Roi','Reinshreiber','ISR'			,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63066','Daniele','Orsato','ITA'				,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63067','Gianluca','Rocchi','ITA'			,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63068','Luca','Banti','ITA'					,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63069','Nicola','Rizzoli','ITA'				,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63070','Paolo','Mazzoleni','ITA'			,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63071','Paolo','Tagliavento','ITA'			,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63072','Andris','Treimanis','LVA'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63073','Gediminas','Ma?eika','LVA'			,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63074','Laurent','Kopriwa','LUX'			,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63075','Alan','Mario sant','MLT'			,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63076','Clayton','Pisani','MLT'				,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63077','Mads-Kristoffer','Kristoffersen','NOR'	,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63078','Svein','Oddvar Moen','NOR'			,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63079','Tore','Hansen','NOR'				,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63080','Bas','Nijhuis','NED'				,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63081','Björn','Kuipers','NED'				,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63082','Danny','Makkelie','NED'				,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63083','Kevin','Blom','NED'					,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63084','Serdar','Gözübüyük','NED'			,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63085','Bartosz','Frankowski','POL'			,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63086','Daniel','Stefanski','POL'			,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63087','Pawel','Gil','POL'					,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63088','Pawel','Raczkowski','POL'			,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63089','Szymon','Marciniak','POL'			,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63090','Artur','Dias','POR'					,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63091','Artur','Soares Dias','POR'			,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63092','Jorge','Sousa','POR'				,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63093','Manuel','De Sousa','POR'			,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63094','Tiago','Martins','POR'				,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63095','Miroslav','Zelinka','CZE'			,'01/12/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63096','Pavel','Královec','CZE'				,'08/10/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63097','Aleksandar','Stavrev','MKD'			,'03/27/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63098','Alexandru','Tean','ROU'				,'09/13/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63099','Alexandru','Tudor','ROU'			,'04/10/1996');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63100','István','Kovács','ROU'				,'10/14/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63101','Ovidiu','Hategan','ROU'				,'07/28/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63102','Aleksei','Eskov','RUS'				,'11/15/1983');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63103','Sergei','Karasev','RUS'				,'09/29/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63104','Sergei','Lapochkin','RUS'			,'12/10/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63105','Sergey','Karasev','RUS'				,'11/01/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63106','Vladislav','Bezborodov','RUS'		,'12/16/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63107','Milorad','Ma?ic','SRB'				,'01/22/1993');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63108','Srdjan','Jovanovic','SRB'			,'03/07/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63109','Andreas','Ekberg','SWE'				,'01/01/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63110','Jonas','Eriksson','SWE'				,'10/10/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63111','Martin','Strömbergsson','SWE'		,'02/02/1995');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63112','Stefan','Johannesson','SWE'			,'11/03/1992');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63113','Adrien','Jaccottet','SUI'			,'03/10/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63114','Sandro','Schärer','SUI'				,'09/04/1989');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63115','Stephan','Klossner','SUI'			,'04/09/1985');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63116','Ali','Palabiyik','TUR'				,'08/23/1986');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63117','Cüneyt','Çakir','TUR'				,'05/10/1997');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63118','Deniz','Aytekin','TUR'				,'07/21/1987');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63119','Halis','Özkahya','TUR'				,'06/11/1999');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63120','Hüseyin','Göçek','TUR'				,'04/21/1990');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63121','Sergeii','Boiko','UKR'				,'07/22/1991');
INSERT INTO Personas (cod_persona, nom_persona, ape_persona, cod_pais, f_nac ) VALUES ('63122','Yevhen','Aranovskiy','UKR'			,'01/12/1997');
                                   
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

INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10001','63001','GER');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10002','63002','GER');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10003','63003','GER');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10004','63004','GER');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10005','63005','GER');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10006','63006','GER');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10007','63007','ARM');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10008','63008','AUT');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10009','63009','AUT');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10010','63010','AUT');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10011','63011','AUT');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10012','63012','AZE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10013','63013','BEL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10014','63014','BEL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10015','63015','BLR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10016','63016','BIH');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10017','63017','BUL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10018','63018','BUL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10019','63019','BUL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10020','63020','CYP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10021','63021','CRO');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10022','63022','CRO');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10023','63023','DEN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10024','63024','ESC');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10025','63025','ESC');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10026','63026','ESC');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10027','63027','ESC');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10028','63028','ESC');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10029','63029','SVK');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10030','63030','SVN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10031','63031','SVN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10032','63032','SVN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10033','63033','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10034','63034','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10035','63035','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10036','63036','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10037','63037','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10038','63038','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10039','63039','ESP');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10040','63040','FIN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10041','63041','FRA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10042','63042','FRA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10043','63043','FRA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10044','63044','FRA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10045','63045','WAL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10046','63046','GEO');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10047','63047','GRE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10048','63048','GRE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10049','63049','GRE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10050','63050','HUN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10051','63051','HUN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10052','63052','HUN');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10053','63053','ENG');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10054','63054','ENG');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10055','63055','ENG');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10056','63056','ENG');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10057','63057','ENG');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10058','63058','ENG');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10059','63059','NIR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10060','63060','IRL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10061','63061','ISL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10062','63062','ISR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10063','63063','ISR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10064','63064','ISR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10065','63065','ISR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10066','63066','ITA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10067','63067','ITA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10068','63068','ITA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10069','63069','ITA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10070','63070','ITA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10071','63071','ITA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10072','63072','LVA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10073','63073','LVA');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10074','63074','LUX');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10075','63075','MLT');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10076','63076','MLT');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10077','63077','NOR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10078','63078','NOR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10079','63079','NOR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10080','63080','NED');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10081','63081','NED');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10082','63082','NED');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10083','63083','NED');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10084','63084','NED');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10085','63085','POL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10086','63086','POL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10087','63087','POL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10088','63088','POL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10089','63089','POL');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10090','63090','POR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10091','63091','POR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10092','63092','POR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10093','63093','POR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10094','63094','POR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10095','63095','CZE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10096','63096','CZE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10097','63097','MKD');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10098','63098','ROU');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10099','63099','ROU');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10100','63100','ROU');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10101','63101','ROU');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10102','63102','RUS');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10103','63103','RUS');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10104','63104','RUS');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10105','63105','RUS');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10106','63106','RUS');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10107','63107','SRB');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10108','63108','SRB');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10109','63109','SWE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10110','63110','SWE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10111','63111','SWE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10112','63112','SWE');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10113','63113','SUI');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10114','63114','SUI');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10115','63115','SUI');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10116','63116','TUR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10117','63117','TUR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10118','63118','TUR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10119','63119','TUR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10120','63120','TUR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10121','63121','UKR');
INSERT INTO Arbitros (cod_arbitro, cod_persona, cod_pais) VALUES ('10122','63122','UKR');



/**
Creación de la tabla de los DIRECTORES TECNICOS
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


INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20001','62001','ALB');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20002','62002','AND');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20003','62003','ARM');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20004','62004','AUT');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20005','62005','AZE');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20006','62006','BEL');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20007','62007','BIH');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20008','62008','BLR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20009','62009','BUL');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20010','62010','CRO');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20011','62011','CYP');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20012','62012','CZE');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20013','62013','DEN');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20014','62014','ENG');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20015','62015','ESP');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20016','62016','EST');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20017','62017','FIN');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20018','62018','FRA');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20019','62019','FRO');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20020','62020','GEO');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20021','62021','GER');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20022','62022','GIB');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20023','62023','GRE');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20024','62024','HUN');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20025','62025','IRL');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20026','62026','ISL');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20027','62027','ISR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20028','62028','ITA');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20029','62029','KAZ');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20030','62030','KVX');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20031','62031','LIE');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20032','62032','LTU');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20033','62033','LUX');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20034','62034','LVA');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20035','62035','MDA');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20036','62036','MKD');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20037','62037','MLT');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20038','62038','MNE');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20039','62039','NED');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20040','62040','NIR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20041','62041','NOR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20042','62042','POL');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20043','62043','POR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20044','62044','ROU');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20045','62045','SCO');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20046','62046','SMR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20047','62047','SRB');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20048','62048','SUI');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20049','62049','SVK');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20050','62050','SVN');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20051','62051','SWE');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20052','62052','TUR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20053','62053','UKR');
INSERT INTO DirectoresTecnicos(cod_dt , cod_persona, cod_pais) VALUES ('20054','62054','WAL');


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

INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('01','Albania',				'1001','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('02','Andorra',				'1002','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('03','Armenia',				'1003','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('04','Austria',				'1004','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('05','Azerbaiyan',			'1005','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('06','Belgica',				'1006','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('07','Bosnia y Herzegovina',	'1007','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('08','Bielorrusia',			'1008','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('09','Bulgaria',				'1009','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('10','Croacia',				'1010','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('11','Chipre',				'1011','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('12','Republica Checa',		'1012','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('13','Dinamarca',				'1013','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('14','Inglaterra',			'1014','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('15','España',				'1015','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('16','Estonia',				'1016','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('17','Finlandia',				'1017','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('18','Francia',				'1018','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('19','Isla Feroe',			'1019','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('20','Georgia',				'1020','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('21','Alemania',				'1021','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('22','Gibraltar',				'1022','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('23','Grecia',				'1023','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('24','Hungria',				'1024','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('25','Republica de Irlanda',	'1025','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('26','Islandia',				'1026','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('27','Israel',				'1027','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('28','Italia ',				'1028','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('29','Kazajstán',				'1029','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('30','Kosovo',				'1030','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('31','Liechtenstein',			'1031','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('32','Lituania',				'1032','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('33','Luxenburgo',			'1033','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('34','Letonia',				'1034','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('35','Moldavia',				'1035','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('36','ARY de Macedonia',			'1036','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('37','Malta',				'1037','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('38','Montenegro',			'1038','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('39','Paises Bajos',			'1039','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('40','Irlanda del Norte',			'1040','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('41','Noruega',				'1041','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('42','Polonia',				'1042','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('43','Portugal',				'1043','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('44','Rumania',				'1044','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('45','Escocia',				'1045','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('46','San Marino',			'1046','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('47','Serbia',				'1047','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('48','Suiza',				'1048','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('49','Eslovaquia',			'1049','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('50','Eslovenia',				'1050','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('51','Suecia',				'1051','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('52','Turquia',				'1052','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('53','Ucrania',				'1053','6');
INSERT INTO Equipos(cod_equipo , nomb_equipo, ciudad_sede, cod_confe) VALUES ('54','Gales',				'1054','6');


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

-- brasil
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1930','BRA','6');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1934','BRA','14');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1938','BRA','3');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1950','BRA','2');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1954','BRA','6');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1958','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1962','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1966','BRA','11');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1970','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1974','BRA','4');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1978','BRA','3');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1982','BRA','5');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1986','BRA','5');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1990','BRA','9');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1994','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1998','BRA','2');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2002','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2006','BRA','5');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2010','BRA','6');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2014','BRA','4');
-- alemania
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1934','GER','14');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1938','','3');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1954','BRA','6');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1958','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1962','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1966','BRA','11');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1970','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1974','BRA','4');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1978','BRA','3');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1982','BRA','5');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1986','BRA','5');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1990','BRA','9');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1994','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('1998','BRA','2');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2002','BRA','1');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2006','BRA','5');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2010','BRA','6');
INSERT INTO Participantes(anio_mundial , cod_equipo, puesto) VALUES ('2014','BRA','4');




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


INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('01','20001','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('02','20002','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('03','20003','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('04','20004','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('05','20005','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('06','20006','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('07','20007','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('08','20008','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('09','20009','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('10','20010','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('11','20011','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('12','20012','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('13','20013','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('14','20014','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('15','20015','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('16','20016','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('17','20017','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('18','20018','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('19','20019','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('20','20020','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('21','20021','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('22','20022','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('23','20023','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('24','20024','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('25','20025','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('26','20026','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('27','20027','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('28','20028','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('29','20029','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('30','20030','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('31','20031','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('32','20032','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('33','20033','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('34','20034','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('35','20035','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('36','20036','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('37','20037','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('38','20038','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('39','20039','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('40','20040','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('41','20041','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('42','20042','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('43','20043','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('44','20044','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('45','20045','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('46','20046','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('47','20047','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('48','20048','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('49','20049','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('50','20050','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('51','20051','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('52','20052','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('53','20053','01/01/2014','12/12/2018');
INSERT INTO Dirige(cod_equipo, cod_dt, fecha_inicio, fecha_fin) VALUES ('54','20054','01/01/2014','12/12/2018');




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

-- Grupo A	
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('09','33','09/06/2016','10001','Vasil Levski','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('51','39','09/06/2016','10002','Friends Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('08','18','09/06/2016','10003','Borisov Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('33','51','10/07/2016','10004','Josy-Barthel','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('39','08','10/07/2016','10005','Johan Cruyff Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('18','09','10/07/2016','10006','Stade De Toulouse','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('51','09','10/10/2016','10007','Friends Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('08','33','10/10/2016','10008','Borisov Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('39','18','10/10/2016','10009','Johan Cruyff Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('18','51','11/11/2016','10010','Stade De Toulouse','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('09','08','11/13/2016','10011','Vasil Levski','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('33','39','11/13/2016','10012','Josy-Barthel','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('51','08','03/25/2017','10013','Friends Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('33','18','03/25/2017','10014','Josy-Barthel','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('09','39','03/25/2017','10015','Vasil Levski','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('08','09','06/09/2017','10016','Borisov Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('39','33','06/09/2017','10017','Johan Cruyff Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('51','18','06/09/2017','10018','Friends Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('33','08','08/31/2017','10019','Josy-Barthel','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('09','51','08/31/2017','10020','Vasil Levski','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('18','39','08/31/2017','10021','Stade De Toulouse','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('08','51','09/03/2017','10022','Borisov Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('39','09','09/03/2017','10023','Johan Cruyff Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('18','33','09/03/2017','10024','Stade De Toulouse','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('51','33','10/07/2017','10025','Friends Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('08','39','10/07/2017','10026','Borisov Arena','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('09','18','10/07/2017','10027','Vasil Levski','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('18','08','10/10/2017','10028','Stade De Toulouse','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('33','09','10/10/2017','10029','Josy-Barthel','1','1');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('39','51','10/10/2017','10030','Johan Cruyff Arena','1','1');


--grupo B
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('19','24','09/06/2016','10031','Torsvollur','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('48','43','09/06/2016','10032','St. Jakob-Park','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('02','34','09/06/2016','10033','16adio Nacional','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('34','19','10/07/2016','10034','Skonto Stadium','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('43','02','10/07/2016','10035','16adio Municipal','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('24','48','10/07/2016','10036','G44pama Arena','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('02','48','10/10/2016','10037','16adio Nacional','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('19','43','10/10/2016','10038','Torsvollur','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('34','24','10/10/2016','10039','Skonto Stadium','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('48','19','11/13/2016','10040','St. Jakob-Park','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('24','02','11/13/2016','10041','G44pama Arena','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('43','34','11/13/2016','10042','16adio Municipal','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('02','19','03/25/2017','10043','16adio Nacional','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('48','34','03/25/2017','10044','St. Jakob-Park','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('43','24','03/25/2017','10045','16adio Municipal','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('19','48','06/09/2017','10046','Torsvollur','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('34','43','06/09/2017','10047','Skonto Stadium','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('02','24','06/09/2017','10048','16adio Nacional','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('48','02','08/31/2017','10049','St. Jakob-Park','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('24','34','08/31/2017','10050','G44pama Arena','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('43','19','08/31/2017','10051','16adio Municipal','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('19','02','09/03/2017','10052','Torsvollur','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('24','43','09/03/2017','10053','G44pama Arena','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('34','48','09/03/2017','10054','Skonto Stadium','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('19','34','10/07/2017','10055','Torsvollur','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('02','43','10/07/2017','10056','16adio Nacional','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('48','24','10/07/2017','10057','St. Jakob-Park','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('24','19','10/10/2017','10058','G44pama Arena','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('34','02','10/10/2017','10059','Skonto Stadium','1','2');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('43','48','10/10/2017','10060','16adio Municipal','1','2');
--grupo C
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('46','05','09/04/2016','10061','16adio Olímpico de Bakú','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('12','40','09/04/2016','10062','16adio Letná','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('41','21','09/04/2016','10063','Ullevaal Stadion','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('05','41','10/08/2016','10064','16adio Olímpico','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('21','12','10/08/2016','10065','Imtech Arena','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('40','46','10/08/2016','10066','Windsor Park','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('12','05','10/11/2016','10067','16adio Letná','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('21','40','10/11/2016','10068','Imtech Arena','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('41','46','10/11/2016','10069','Ullevaal Stadion','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('12','41','11/11/2016','10070','16adio Letná','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('40','05','11/11/2016','10071','Windsor Park','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('46','21','11/11/2016','10072','16adio Olímpico de Bakú','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('05','21','03/26/2017','10073','16adio Olímpico','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('46','12','03/26/2017','10074','16adio Olímpico de Bakú','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('40','41','03/26/2017','10075','Windsor Park','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('05','40','06/10/2017','10076','16adio Olímpico','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('21','46','06/10/2017','10077','Imtech Arena','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('41','12','06/10/2017','10078','Ullevaal Stadion','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('12','21','09/01/2017','10079','16adio Letná','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('41','05','09/01/2017','10080','Ullevaal Stadion','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('46','40','09/01/2017','10081','16adio Olímpico de Bakú','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('05','46','09/04/2017','10082','16adio Olímpico','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('21','41','09/04/2017','10083','Imtech Arena','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('40','12','09/04/2017','10084','Windsor Park','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('05','12','10/05/2017','10085','16adio Olímpico','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('40','21','10/05/2017','10086','Windsor Park','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('46','41','10/05/2017','10087','16adio Olímpico de Bakú','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('12','46','10/08/2017','10088','16adio Letná','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('21','05','10/08/2017','10089','Imtech Arena','1','3');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('41','40','10/08/2017','10090','Ullevaal Stadion','1','3');
-- grupo D
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('20','04','09.05.2016','10091','16adio Borís Paichadze','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('54','35','09.05.2016','10092','Cardiff City Stadium','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('47','25','09.05.2016','10093','16adio 16rella Roja','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('35','47','10.06.2016','10094','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('25','20','10.06.2016','10095','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('04','54','10.06.2016','10096','16adio Ernst Happel','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('54','20','10.09.2016','10097','Cardiff City Stadium','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('35','25','10.09.2016','10098','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('47','04','10.09.2016','10099','16adio 16rella Roja','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('04','25','11.12.2016','10100','16adio Ernst Happel','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('20','35','11.12.2016','10101','16adio Borís Paichadze','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('54','47','11.12.2016','10102','Cardiff City Stadium','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('20','47','03.24.2017','10103','16adio Borís Paichadze','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('25','54','03.24.2017','10104','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('04','35','03.24.2017','10105','16adio Ernst Happel','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('25','04','06.11.2017','10106','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('35','20','06.11.2017','10107','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('47','54','06.11.2017','10108','16adio 16rella Roja','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('20','25','09.02.2017','10109','16adio Borís Paichadze','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('47','35','09.02.2017','10110','16adio 16rella Roja','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('54','04','09.02.2017','10111','Cardiff City Stadium','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('04','20','09.05.2017','10112','16adio Ernst Happel','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('35','54','09.05.2017','10113','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('25','47','09.05.2017','10114','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('20','54','10.06.2017','10115','16adio Borís Paichadze','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('04','47','10.06.2017','10116','16adio Ernst Happel','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('25','35','10.06.2017','10117','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('35','04','10.09.2017','10118','16adio Zimbru','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('47','20','10.09.2017','10119','16adio 16rella Roja','1','4');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('54','25','10.09.2017','10120','Cardiff City Stadium','1','4');
--grupo E
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('13','03','09/04/2016','10031','Parken Stadion','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('29','42','09/04/2016','10032','Astana Arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('44','38','09/04/2016','10033','cluj arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('03','44','10/08/2016','10034','16adio Republicano','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('38','29','10/08/2016','10035','16adio Pod Goricom','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('42','13','10/08/2016','10036','16adion Nal Varsovia','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('29','44','10/11/2016','10037','Astana Arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('42','03','10/11/2016','10038','16adion Nal Varsovia','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('13','38','10/11/2016','10039','Parken Stadion','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('03','38','11/11/2016','10040','16adio Republicano','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('13','29','11/11/2016','10041','Parken Stadion','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('44','42','11/11/2016','10042','cluj arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('03','29','03/26/2017','10043','16adio Republicano','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('38','42','03/26/2017','10044','16adio Pod Goricom','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('44','13','03/26/2017','10045','cluj arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('29','13','06/10/2017','10046','Astana Arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('38','03','06/10/2017','10047','16adio Pod Goricom','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('42','44','06/10/2017','10048','16adion Nal Varsovia','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('29','38','09/01/2017','10049','Astana Arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('13','42','09/01/2017','10050','Parken Stadion','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('44','03','09/01/2017','10051','cluj arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('03','13','09/04/2017','10052','16adio Republicano','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('38','44','09/04/2017','10053','16adio Pod Goricom','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('42','29','09/04/2017','10054','16adion Nal Varsovia','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('03','42','10/05/2017','10055','16adio Republicano','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('38','13','10/05/2017','10056','16adio Pod Goricom','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('44','29','10/05/2017','10057','cluj arena','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('42','38','10/08/2017','10058','16adion Nal Varsovia','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('13','44','10/08/2017','10059','Parken Stadion','1','5');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('29','03','10/08/2017','10060','Astana Arena','1','5');
-- grupo F
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('49','14','09/04/2016','10031','16adio Antona Malatinského','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('32','50','09/04/2016','10032','16adio LFF','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('37','45','09/04/2016','10033','16adio Nacional Ta Qali','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('14','37','10/08/2016','10034','16adio de Wembley','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('45','32','10/08/2016','10035','Hamp13 Park','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('50','49','10/08/2016','10036','16adio Stožice','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('50','14','10/11/2016','10037','16adio Stožice','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('32','37','10/11/2016','10038','16adio LFF','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('49','45','10/11/2016','10039','16adio Antona Malatinského','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('49','32','11/11/2016','10040','16adio Antona Malatinského','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('14','45','11/11/2016','10041','16adio de Wembley','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('37','50','11/11/2016','10042','16adio Nacional Ta Qali','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('14','32','03/26/2017','10043','16adio de Wembley','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('45','50','03/26/2017','10044','Hamp13 Park','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('37','49','03/26/2017','10045','16adio Nacional Ta Qali','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('50','37','06/10/2017','10046','16adio Stožice','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('45','14','06/10/2017','10047','Hamp13 Park','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('32','49','06/10/2017','10048','16adio LFF','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('49','50','09/01/2017','10049','16adio Antona Malatinského','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('32','45','09/01/2017','10050','16adio LFF','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('37','14','09/01/2017','10051','16adio Nacional Ta Qali','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('14','49','09/04/2017','10052','16adio de Wembley','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('45','37','09/04/2017','10053','Hamp13 Park','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('50','32','09/04/2017','10054','16adio Stožice','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('45','49','10/05/2017','10055','Hamp13 Park','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('14','50','10/05/2017','10056','16adio de Wembley','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('37','32','10/05/2017','10057','16adio Nacional Ta Qali','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('32','14','10/08/2017','10058','16adio LFF','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('49','37','10/08/2017','10059','16adio Antona Malatinského','1','6');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('50','45','10/08/2017','10060','16adio Stožice','1','6');

-- grupo g

INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('15','31','09/05/2016','10091','Estadio Santiago Bernabéu','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('27','28','09/05/2016','10092','Estadio Sammy Ofer','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('01','36','09/06/2016','10093','Estadio Loro Borici','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('31','01','10/06/2016','10094','Rheinpark Stadion','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('36','27','10/06/2016','10095','Estadio Filip II de Macedonia','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('28','15','10/06/2016','10096','Juventus Stadium','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('27','31','10/09/2016','10097','Estadio Sammy Ofer','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('36','28','10/09/2016','10098','Estadio Filip II de Macedonia','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('01','15','10/09/2016','10099','Estadio Loro Borici','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('15','36','11/12/2016','10100','Estadio Santiago Bernabéu','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('01','27','11/12/2016','10101','Estadio Loro Borici','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('31','28','11/12/2016','10102','Rheinpark Stadion','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('28','01','03/24/2017','10103','Juventus Stadium','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('31','36','03/24/2017','10104','Rheinpark Stadion','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('15','27','03/24/2017','10105','Estadio Santiago Bernabéu','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('36','15','06/11/2017','10106','Estadio Filip II de Macedonia','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('27','01','06/11/2017','10107','Estadio Sammy Ofer','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('28','31','06/11/2017','10108','Juventus Stadium','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('01','31','09/02/2017','10109','Estadio Loro Borici','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('15','28','09/02/2017','10110','Estadio Santiago Bernabéu','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('27','36','09/02/2017','10111','Estadio Sammy Ofer','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('28','27','09/05/2017','10112','Juventus Stadium','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('31','15','09/05/2017','10113','Rheinpark Stadion','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('36','01','09/05/2017','10114','Estadio Filip II de Macedonia','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('28','36','10/06/2017','10115','Juventus Stadium','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('31','27','10/06/2017','10116','Rheinpark Stadion','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('15','01','10/06/2017','10117','Estadio Santiago Bernabéu','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('36','31','10/09/2017','10118','Estadio Filip II de Macedonia','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('27','15','10/09/2017','10119','Estadio Sammy Ofer','1','7');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('01','28','10/09/2017','10120','Estadio Loro Borici','1','7');
-- grupo H
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('22','23','09/06/2016','10061','Estadio Algarve','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('07','16','09/06/2016','10062','Bilino Polje','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('11','06','09/06/2016','10063','Estadio GSP','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('16','22','10/07/2016','10064','A. Le Coq Arena','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('06','07','10/07/2016','10065','Estadio Rey Balduino','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('23','11','10/07/2016','10066','Estadio Georgios Karaiskakis','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('07','11','10/10/2016','10067','Bilino Polje','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('16','23','10/10/2016','10068','A. Le Coq Arena','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('22','06','10/10/2016','10069','Estadio Algarve','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('11','22','11/13/2016','10070','Estadio GSP','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('06','16','11/13/2016','10071','Estadio Rey Balduino','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('23','07','11/13/2016','10072','Estadio Georgios Karaiskakis','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('11','16','03/25/2017','10073','Estadio GSP','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('07','22','03/25/2017','10074','Bilino Polje','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('06','23','03/25/2017','10075','Estadio Rey Balduino','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('16','06','06/09/2017','10076','A. Le Coq Arena','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('22','11','06/09/2017','10077','Estadio Algarve','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('07','23','06/09/2017','10078','Bilino Polje','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('06','22','08/31/2017','10079','Estadio Rey Balduino','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('11','07','08/31/2017','10080','Estadio GSP','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('23','16','08/31/2017','10081','Estadio Georgios Karaiskakis','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('16','11','09/03/2017','10082','A. Le Coq Arena','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('23','06','09/03/2017','10083','Estadio Georgios Karaiskakis','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('22','07','09/03/2017','10084','Estadio Algarve','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('22','16','10/07/2017','10085','Estadio Algarve','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('07','06','10/07/2017','10086','Bilino Polje','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('11','23','10/07/2017','10087','Estadio GSP','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('16','07','10/10/2017','10088','A. Le Coq Arena','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('23','22','10/10/2017','10089','Estadio Georgios Karaiskakis','1','8');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('06','11','10/10/2017','10090','Estadio Rey Balduino','1','8');
--grupo I
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('17','30','09/05/2016','10031','Veritas Stadion','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('10','52','09/05/2016','10032','Estadio Maksimir','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('53','26','09/05/2016','10033','Estadio Olímpico de Kiev','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('26','17','10/06/2016','10034','Laugardalsvöllur','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('52','53','10/06/2016','10035','Torku Arena','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('30','10','10/06/2016','10036','Estadio Mariscal Józef Pilsudski','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('53','30','10/09/2016','10037','Estadio Olímpico de Kiev','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('17','10','10/09/2016','10038','Veritas Stadion','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('26','52','10/09/2016','10039','Laugardalsvöllur','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('10','26','11/12/2016','10040','Estadio Maksimir','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('52','30','11/12/2016','10041','Torku Arena','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('53','17','11/12/2016','10042','Estadio Olímpico de Kiev','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('52','17','03/24/2017','10043','Torku Arena','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('10','53','03/24/2017','10044','Estadio Maksimir','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('30','26','03/24/2017','10045','Estadio Mariscal Józef Pilsudski','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('17','53','06/11/2017','10046','Veritas Stadion','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('30','52','06/11/2017','10047','Estadio Mariscal Józef Pilsudski','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('26','10','06/11/2017','10048','Laugardalsvöllur','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('17','26','09/02/2017','10049','Veritas Stadion','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('53','52','09/02/2017','10050','Estadio Olímpico de Kiev','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('10','30','09/03/2017','10051','Estadio Maksimir','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('52','10','09/05/2017','10052','Torku Arena','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('30','17','09/05/2017','10053','Estadio Mariscal Józef Pilsudski','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('26','53','09/05/2017','10054','Laugardalsvöllur','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('10','17','10/06/2017','10055','Estadio Maksimir','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('52','26','10/06/2017','10056','Torku Arena','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('30','53','10/06/2017','10057','Estadio Mariscal Józef Pilsudski','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('26','30','10/09/2017','10058','Laugardalsvöllur','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('17','52','10/09/2017','10059','Veritas Stadion','1','9');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('53','10','10/09/2017','10060','Estadio Olímpico de Kiev','1','9');

-- partidos 2 ronda

INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('40','48','11/09/2017','10049','Windsor Park','2','10');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('48','40','11/13/2017','10050','St Jakob Park','2','10');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('10','23','11/09/2017','10051','Estadio Maksimir','2','11');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('23','10','11/13/2017','10052','Estadio Georgios Karaiskakis','2','11');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('13','25','11/09/2017','10053','Parken Stadion','2','12');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('25','13','11/13/2017','10054','Estadio Aviva','2','12');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('51','28','11/09/2017','10055','Friends Arena','2','13');
INSERT INTO Enfrentamiento (cod_equipo_local, cod_equipo_visita, fecha_enfrentamiento, cod_arbitro, estadio, cod_fase, cod_grupo) VALUES ('28','51','11/14/2017','10056','Estadio Giuseppe Meazza','2','13');




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

INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10001','01','60001','50','02','05','05','05','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10002','01','60002','51','03','06','06','06','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10003','01','60003','52','04','07','07','07','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10004','01','60004','53','05','08','08','08','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10005','01','60005','54','06','09','09','09','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10006','01','60006','55','07','10','10','10','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10007','01','60007','56','08','11','11','11','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10008','01','60008','57','09','12','12','12','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10009','01','60009','58','10','13','13','13','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10010','01','60010','59','11','14','14','14','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10011','01','60011','60','12','15','15','15','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10012','01','60012','61','13','16','16','16','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10013','01','60013','62','14','17','17','17','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10014','01','60014','63','15','18','18','18','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10015','01','60015','64','16','19','19','19','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10016','01','60016','65','17','20','20','20','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10017','01','60017','66','18','21','21','21','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10018','01','60018','67','19','22','22','22','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10019','01','60019','68','20','23','23','23','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10020','01','60020','69','21','24','24','24','ALB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10021','01','60021','70','22','25','25','25','ALB');

INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10022','02','60022','50','02','05','05','05','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10023','02','60023','51','03','06','06','06','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10024','02','60024','52','04','07','07','07','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10025','02','60025','53','05','08','08','08','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10026','02','60026','54','06','09','09','09','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10027','02','60027','55','07','10','10','10','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10028','02','60028','56','08','11','11','11','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10029','02','60029','57','09','12','12','12','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10030','02','60030','58','10','13','13','13','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10031','02','60031','59','11','14','14','14','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10032','02','60032','60','12','15','15','15','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10033','02','60033','61','13','16','16','16','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10034','02','60034','62','14','17','17','17','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10035','02','60035','63','15','18','18','18','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10036','02','60036','64','16','19','19','19','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10037','02','60037','65','17','20','20','20','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10038','02','60038','66','18','21','21','21','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10039','02','60039','67','19','22','22','22','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10040','02','60040','68','20','23','23','23','AND');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10041','03','60041','69','21','24','24','24','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10042','03','60042','70','22','25','25','25','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10043','03','60043','50','02','05','05','05','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10044','03','60044','51','03','06','06','06','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10045','03','60045','52','04','07','07','07','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10046','03','60046','53','05','08','08','08','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10047','03','60047','54','06','09','09','09','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10048','03','60048','55','07','10','10','10','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10049','03','60049','56','08','11','11','11','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10050','03','60050','57','09','12','12','12','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10051','03','60051','58','10','13','13','13','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10052','03','60052','59','11','14','14','14','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10053','03','60053','60','12','15','15','15','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10054','03','60054','61','13','16','16','16','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10055','03','60055','62','14','17','17','17','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10056','03','60056','63','15','18','18','18','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10057','03','60057','64','16','19','19','19','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10058','03','60058','65','17','20','20','20','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10059','03','60059','66','18','21','21','21','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10060','03','60060','67','19','22','22','22','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10061','03','60061','68','20','23','23','23','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10062','03','60062','69','21','24','24','24','ARM');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10063','04','60063','70','22','25','25','25','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10064','04','60064','50','02','05','05','05','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10065','04','60065','51','03','06','06','06','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10066','04','60066','52','04','07','07','07','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10067','04','60067','53','05','08','08','08','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10068','04','60068','54','06','09','09','09','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10069','04','60069','55','07','10','10','10','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10070','04','60070','56','08','11','11','11','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10071','04','60071','57','09','12','12','12','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10072','04','60072','58','10','13','13','13','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10073','04','60073','59','11','14','14','14','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10074','04','60074','60','12','15','15','15','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10075','04','60075','61','13','16','16','16','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10076','04','60076','62','14','17','17','17','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10077','04','60077','63','15','18','18','18','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10078','04','60078','64','16','19','19','19','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10079','04','60079','65','17','20','20','20','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10080','04','60080','66','18','21','21','21','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10081','04','60081','67','19','22','22','22','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10082','04','60082','68','20','23','23','23','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10083','04','60083','69','21','24','24','24','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10084','04','60084','70','22','25','25','25','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10085','04','60085','50','02','05','05','05','AUT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10086','05','60086','51','03','06','06','06','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10087','05','60087','52','04','07','07','07','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10088','05','60088','53','05','08','08','08','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10089','05','60089','54','06','09','09','09','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10090','05','60090','55','07','10','10','10','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10091','05','60091','56','08','11','11','11','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10092','05','60092','57','09','12','12','12','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10093','05','60093','58','10','13','13','13','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10094','05','60094','59','11','14','14','14','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10095','05','60095','60','12','15','15','15','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10096','05','60096','61','13','16','16','16','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10097','05','60097','62','14','17','17','17','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10098','05','60098','63','15','18','18','18','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10099','05','60099','64','16','19','19','19','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10100','05','60100','65','17','20','20','20','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10101','05','60101','66','18','21','21','21','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10102','05','60102','67','19','22','22','22','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10103','05','60103','68','20','23','23','23','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10104','05','60104','69','21','24','24','24','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10105','05','60105','70','22','25','25','25','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10106','05','60106','50','02','05','05','05','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10107','05','60107','51','03','06','06','06','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10108','05','60108','52','04','07','07','07','AZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10109','06','60109','53','05','08','08','08','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10110','06','60110','54','06','09','09','09','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10111','06','60111','55','07','10','10','10','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10112','06','60112','56','08','11','11','11','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10113','06','60113','57','09','12','12','12','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10114','06','60114','58','10','13','13','13','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10115','06','60115','59','11','14','14','14','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10116','06','60116','60','12','15','15','15','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10117','06','60117','61','13','16','16','16','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10118','06','60118','62','14','17','17','17','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10119','06','60119','63','15','18','18','18','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10120','06','60120','64','16','19','19','19','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10121','06','60121','65','17','20','20','20','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10122','06','60122','66','18','21','21','21','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10123','06','60123','67','19','22','22','22','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10124','06','60124','68','20','23','23','23','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10125','06','60125','69','21','24','24','24','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10126','06','60126','70','22','25','25','25','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10127','06','60127','50','02','05','05','05','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10128','06','60128','51','03','06','06','06','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10129','06','60129','52','04','07','07','07','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10130','06','60130','53','05','08','08','08','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10131','06','60131','54','06','09','09','09','BEL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10132','07','60132','55','07','10','10','10','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10133','07','60133','56','08','11','11','11','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10134','07','60134','57','09','12','12','12','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10135','07','60135','58','10','13','13','13','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10136','07','60136','59','11','14','14','14','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10137','07','60137','60','12','15','15','15','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10138','07','60138','61','13','16','16','16','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10139','07','60139','62','14','17','17','17','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10140','07','60140','63','15','18','18','18','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10141','07','60141','64','16','19','19','19','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10142','07','60142','65','17','20','20','20','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10143','07','60143','66','18','21','21','21','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10144','07','60144','67','19','22','22','22','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10145','07','60145','68','20','23','23','23','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10146','07','60146','69','21','24','24','24','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10147','07','60147','70','22','25','25','25','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10148','07','60148','50','02','05','05','05','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10149','07','60149','51','03','06','06','06','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10150','07','60150','52','04','07','07','07','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10151','07','60151','53','05','08','08','08','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10152','07','60152','54','06','09','09','09','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10153','07','60153','55','07','10','10','10','BIH');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10154','08','60177','56','08','11','11','11','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10155','08','60178','57','09','12','12','12','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10156','08','60179','58','10','13','13','13','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10157','08','60180','59','11','14','14','14','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10158','08','60181','60','12','15','15','15','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10159','08','60182','61','13','16','16','16','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10160','08','60183','62','14','17','17','17','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10161','08','60184','63','15','18','18','18','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10162','08','60185','64','16','19','19','19','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10163','08','60186','65','17','20','20','20','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10164','08','60187','66','18','21','21','21','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10165','08','60188','67','19','22','22','22','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10166','08','60189','68','20','23','23','23','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10167','08','60190','69','21','24','24','24','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10168','08','60191','70','22','25','25','25','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10169','08','60192','50','02','05','05','05','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10170','08','60193','51','03','06','06','06','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10171','08','60194','52','04','07','07','07','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10172','08','60195','53','05','08','08','08','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10173','08','60196','54','06','09','09','09','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10174','08','60197','55','07','10','10','10','BLR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10175','09','60198','56','08','11','11','11','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10176','09','60199','57','09','12','12','12','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10177','09','60200','58','10','13','13','13','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10178','09','60201','59','11','14','14','14','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10179','09','60202','60','12','15','15','15','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10180','09','60203','61','13','16','16','16','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10181','09','60204','62','14','17','17','17','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10182','09','60205','63','15','18','18','18','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10183','09','60206','64','16','19','19','19','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10184','09','60207','65','17','20','20','20','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10185','09','60208','66','18','21','21','21','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10186','09','60209','67','19','22','22','22','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10187','09','60210','68','20','23','23','23','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10188','09','60211','69','21','24','24','24','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10189','09','60212','70','22','25','25','25','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10190','09','60213','50','02','05','05','05','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10191','09','60214','51','03','06','06','06','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10192','09','60215','52','04','07','07','07','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10193','09','60216','53','05','08','08','08','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10194','09','60217','54','06','09','09','09','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10195','09','60218','55','07','10','10','10','BUL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10196','10','60219','56','08','11','11','11','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10197','10','60220','57','09','12','12','12','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10198','10','60221','58','10','13','13','13','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10199','10','60222','59','11','14','14','14','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10200','10','60223','60','12','15','15','15','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10201','10','60224','61','13','16','16','16','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10202','10','60225','62','14','17','17','17','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10203','10','60226','63','15','18','18','18','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10204','10','60227','64','16','19','19','19','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10205','10','60228','65','17','20','20','20','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10206','10','60229','66','18','21','21','21','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10207','10','60230','67','19','22','22','22','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10208','10','60231','68','20','23','23','23','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10209','10','60232','69','21','24','24','24','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10210','10','60233','70','22','25','25','25','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10211','10','60234','50','02','05','05','05','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10212','10','60235','51','03','06','06','06','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10213','10','60236','52','04','07','07','07','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10214','10','60237','53','05','08','08','08','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10215','10','60238','54','06','09','09','09','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10216','10','60239','55','07','10','10','10','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10217','10','60240','56','08','11','11','11','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10218','10','60241','57','09','12','12','12','CRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10219','11','60242','58','10','13','13','13','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10220','11','60243','59','11','14','14','14','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10221','11','60244','60','12','15','15','15','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10222','11','60245','61','13','16','16','16','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10223','11','60246','62','14','17','17','17','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10224','11','60247','63','15','18','18','18','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10225','11','60248','64','16','19','19','19','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10226','11','60249','65','17','20','20','20','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10227','11','60250','66','18','21','21','21','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10228','11','60251','67','19','22','22','22','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10229','11','60252','68','20','23','23','23','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10230','11','60253','69','21','24','24','24','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10231','11','60254','70','22','25','25','25','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10232','11','60255','50','02','05','05','05','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10233','11','60256','51','03','06','06','06','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10234','11','60257','52','04','07','07','07','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10235','11','60258','53','05','08','08','08','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10236','11','60259','54','06','09','09','09','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10237','11','60260','55','07','10','10','10','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10238','11','60261','56','08','11','11','11','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10239','11','60262','57','09','12','12','12','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10240','11','60263','58','10','13','13','13','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10241','11','60264','59','11','14','14','14','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10242','11','60265','60','12','15','15','15','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10243','11','60266','61','13','16','16','16','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10244','11','60267','62','14','17','17','17','CYP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10245','12','60268','63','15','18','18','18','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10246','12','60269','64','16','19','19','19','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10247','12','60270','65','17','20','20','20','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10248','12','60271','66','18','21','21','21','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10249','12','60272','67','19','22','22','22','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10250','12','60273','68','20','23','23','23','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10251','12','60274','69','21','24','24','24','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10252','12','60275','70','22','25','25','25','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10253','12','60276','50','02','05','05','05','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10254','12','60277','51','03','06','06','06','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10255','12','60278','52','04','07','07','07','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10256','12','60279','53','05','08','08','08','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10257','12','60280','54','06','09','09','09','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10258','12','60281','55','07','10','10','10','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10259','12','60282','56','08','11','11','11','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10260','12','60283','57','09','12','12','12','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10261','12','60284','58','10','13','13','13','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10262','12','60285','59','11','14','14','14','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10263','12','60286','60','12','15','15','15','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10264','12','60287','61','13','16','16','16','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10265','12','60288','62','14','17','17','17','CZE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10266','13','60289','63','15','18','18','18','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10267','13','60290','64','16','19','19','19','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10268','13','60291','65','17','20','20','20','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10269','13','60292','66','18','21','21','21','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10270','13','60293','67','19','22','22','22','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10271','13','60294','68','20','23','23','23','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10272','13','60295','69','21','24','24','24','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10273','13','60296','70','22','25','25','25','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10274','13','60297','50','02','05','05','05','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10275','13','60298','51','03','06','06','06','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10276','13','60299','52','04','07','07','07','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10277','13','60300','53','05','08','08','08','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10278','13','60301','54','06','09','09','09','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10279','13','60302','55','07','10','10','10','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10280','13','60303','56','08','11','11','11','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10281','13','60304','57','09','12','12','12','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10282','13','60305','58','10','13','13','13','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10283','13','60306','59','11','14','14','14','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10284','13','60307','60','12','15','15','15','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10285','13','60308','61','13','16','16','16','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10286','13','60309','62','14','17','17','17','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10287','13','60310','63','15','18','18','18','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10288','13','60311','64','16','19','19','19','DEN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10289','14','60312','65','17','20','20','20','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10290','14','60313','66','18','21','21','21','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10291','14','60314','67','19','22','22','22','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10292','14','60315','68','20','23','23','23','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10293','14','60316','69','21','24','24','24','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10294','14','60317','70','22','25','25','25','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10295','14','60318','50','02','05','05','05','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10296','14','60319','51','03','06','06','06','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10297','14','60320','52','04','07','07','07','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10298','14','60321','53','05','08','08','08','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10299','14','60322','54','06','09','09','09','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10300','14','60323','55','07','10','10','10','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10301','14','60324','56','08','11','11','11','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10302','14','60325','57','09','12','12','12','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10303','14','60326','58','10','13','13','13','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10304','14','60327','59','11','14','14','14','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10305','14','60328','60','12','15','15','15','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10306','14','60329','61','13','16','16','16','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10307','14','60330','62','14','17','17','17','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10308','14','60331','63','15','18','18','18','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10309','14','60332','64','16','19','19','19','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10310','14','60333','65','17','20','20','20','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10311','14','60334','66','18','21','21','21','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10312','14','60335','67','19','22','22','22','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10313','14','60336','68','20','23','23','23','ENG');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10314','15','60337','69','21','24','24','24','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10315','15','60338','70','22','25','25','25','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10316','15','60339','50','02','05','05','05','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10317','15','60340','51','03','06','06','06','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10318','15','60341','52','04','07','07','07','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10319','15','60342','53','05','08','08','08','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10320','15','60343','54','06','09','09','09','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10321','15','60344','55','07','10','10','10','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10322','15','60345','56','08','11','11','11','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10323','15','60346','57','09','12','12','12','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10324','15','60347','58','10','13','13','13','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10325','15','60348','59','11','14','14','14','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10326','15','60349','60','12','15','15','15','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10327','15','60350','61','13','16','16','16','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10328','15','60351','62','14','17','17','17','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10329','15','60352','63','15','18','18','18','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10330','15','60353','64','16','19','19','19','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10331','15','60354','65','17','20','20','20','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10332','15','60355','66','18','21','21','21','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10333','15','60356','67','19','22','22','22','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10334','15','60357','68','20','23','23','23','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10335','15','60358','69','21','24','24','24','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10336','15','60359','70','22','25','25','25','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10337','15','60360','50','02','05','05','05','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10338','15','60361','51','03','06','06','06','ESP');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10339','16','60362','52','04','07','07','07','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10340','16','60363','53','05','08','08','08','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10341','16','60364','54','06','09','09','09','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10342','16','60365','55','07','10','10','10','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10343','16','60366','56','08','11','11','11','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10344','16','60367','57','09','12','12','12','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10345','16','60368','58','10','13','13','13','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10346','16','60369','59','11','14','14','14','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10347','16','60370','60','12','15','15','15','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10348','16','60371','61','13','16','16','16','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10349','16','60372','62','14','17','17','17','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10350','16','60373','63','15','18','18','18','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10351','16','60374','64','16','19','19','19','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10352','16','60375','65','17','20','20','20','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10353','16','60376','66','18','21','21','21','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10354','16','60377','67','19','22','22','22','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10355','16','60378','68','20','23','23','23','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10356','16','60379','69','21','24','24','24','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10357','16','60380','70','22','25','25','25','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10358','16','60381','50','02','05','05','05','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10359','16','60382','51','03','06','06','06','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10360','16','60383','52','04','07','07','07','FIN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10361','17','60384','53','05','08','08','08','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10362','17','60385','54','06','09','09','09','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10363','17','60386','55','07','10','10','10','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10364','17','60387','56','08','11','11','11','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10365','17','60388','57','09','12','12','12','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10366','17','60389','58','10','13','13','13','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10367','17','60390','59','11','14','14','14','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10368','17','60391','60','12','15','15','15','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10369','17','60392','61','13','16','16','16','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10370','17','60393','62','14','17','17','17','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10371','17','60394','63','15','18','18','18','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10372','17','60395','64','16','19','19','19','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10373','17','60396','65','17','20','20','20','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10374','17','60397','66','18','21','21','21','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10375','17','60398','67','19','22','22','22','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10376','17','60399','68','20','23','23','23','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10377','17','60400','69','21','24','24','24','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10378','17','60401','70','22','25','25','25','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10379','17','60402','50','02','05','05','05','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10380','17','60403','51','03','06','06','06','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10381','17','60404','52','04','07','07','07','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10382','17','60405','53','05','08','08','08','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10383','17','60406','54','06','09','09','09','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10384','17','60407','55','07','10','10','10','FRA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10385','18','60408','56','08','11','11','11','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10386','18','60409','57','09','12','12','12','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10387','18','60410','58','10','13','13','13','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10388','18','60411','59','11','14','14','14','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10389','18','60412','60','12','15','15','15','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10390','18','60413','61','13','16','16','16','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10391','18','60414','62','14','17','17','17','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10392','18','60415','63','15','18','18','18','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10393','18','60416','64','16','19','19','19','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10394','18','60417','65','17','20','20','20','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10395','18','60418','66','18','21','21','21','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10396','18','60419','67','19','22','22','22','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10397','18','60420','68','20','23','23','23','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10398','18','60421','69','21','24','24','24','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10399','18','60422','70','22','25','25','25','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10400','18','60423','50','02','05','05','05','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10401','18','60424','51','03','06','06','06','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10402','18','60425','52','04','07','07','07','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10403','18','60426','53','05','08','08','08','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10404','18','60427','54','06','09','09','09','FRO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10405','19','60428','55','07','10','10','10','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10406','19','60429','56','08','11','11','11','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10407','19','60430','57','09','12','12','12','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10408','19','60431','58','10','13','13','13','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10409','19','60432','59','11','14','14','14','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10410','19','60433','60','12','15','15','15','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10411','19','60434','61','13','16','16','16','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10412','19','60435','62','14','17','17','17','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10413','19','60436','63','15','18','18','18','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10414','19','60437','64','16','19','19','19','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10415','19','60438','65','17','20','20','20','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10416','19','60439','66','18','21','21','21','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10417','19','60440','67','19','22','22','22','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10418','19','60441','68','20','23','23','23','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10419','19','60442','69','21','24','24','24','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10420','19','60443','70','22','25','25','25','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10421','19','60444','50','02','05','05','05','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10422','19','60445','51','03','06','06','06','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10423','19','60446','52','04','07','07','07','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10424','19','60447','53','05','08','08','08','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10425','19','60448','54','06','09','09','09','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10426','19','60449','55','07','10','10','10','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10427','19','60450','56','08','11','11','11','GEO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10428','20','60451','57','09','12','12','12','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10429','20','60452','58','10','13','13','13','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10430','20','60453','59','11','14','14','14','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10431','20','60454','60','12','15','15','15','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10432','20','60455','61','13','16','16','16','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10433','20','60456','62','14','17','17','17','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10434','20','60457','63','15','18','18','18','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10435','20','60458','64','16','19','19','19','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10436','20','60459','65','17','20','20','20','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10437','20','60460','66','18','21','21','21','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10438','20','60461','67','19','22','22','22','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10439','20','60462','68','20','23','23','23','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10440','20','60463','69','21','24','24','24','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10441','20','60464','70','22','25','25','25','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10442','20','60465','50','02','05','05','05','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10443','20','60466','51','03','06','06','06','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10444','20','60467','52','04','07','07','07','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10445','20','60468','53','05','08','08','08','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10446','20','60469','54','06','09','09','09','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10447','20','60470','55','07','10','10','10','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10448','20','60471','56','08','11','11','11','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10449','20','60472','57','09','12','12','12','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10450','20','60473','58','10','13','13','13','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10451','20','60474','59','11','14','14','14','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10452','20','60475','60','12','15','15','15','GER');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10453','21','60476','61','13','16','16','16','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10454','21','60477','62','14','17','17','17','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10455','21','60478','63','15','18','18','18','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10456','21','60479','64','16','19','19','19','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10457','21','60480','65','17','20','20','20','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10458','21','60481','66','18','21','21','21','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10459','21','60482','67','19','22','22','22','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10460','21','60483','68','20','23','23','23','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10461','21','60484','69','21','24','24','24','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10462','21','60485','70','22','25','25','25','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10463','21','60486','50','02','05','05','05','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10464','21','60487','51','03','06','06','06','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10465','21','60488','52','04','07','07','07','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10466','21','60489','53','05','08','08','08','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10467','21','60490','54','06','09','09','09','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10468','21','60491','55','07','10','10','10','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10469','21','60492','56','08','11','11','11','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10470','21','60493','57','09','12','12','12','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10471','21','60494','58','10','13','13','13','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10472','21','60495','59','11','14','14','14','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10473','21','60496','60','12','15','15','15','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10474','21','60497','61','13','16','16','16','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10475','21','60498','62','14','17','17','17','GIB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10476','22','60499','63','15','18','18','18','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10477','22','60500','64','16','19','19','19','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10478','22','60501','65','17','20','20','20','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10479','22','60502','66','18','21','21','21','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10480','22','60503','67','19','22','22','22','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10481','22','60504','68','20','23','23','23','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10482','22','60505','69','21','24','24','24','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10483','22','60506','70','22','25','25','25','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10484','22','60507','50','02','05','05','05','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10485','22','60508','51','03','06','06','06','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10486','22','60509','52','04','07','07','07','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10487','22','60510','53','05','08','08','08','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10488','22','60511','54','06','09','09','09','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10489','22','60512','55','07','10','10','10','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10490','22','60513','56','08','11','11','11','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10491','22','60514','57','09','12','12','12','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10492','22','60515','58','10','13','13','13','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10493','22','60516','59','11','14','14','14','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10494','22','60517','60','12','15','15','15','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10495','22','60518','61','13','16','16','16','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10496','22','60519','62','14','17','17','17','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10497','22','60520','63','15','18','18','18','GRE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10498','23','60521','64','16','19','19','19','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10499','23','60522','65','17','20','20','20','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10500','23','60523','66','18','21','21','21','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10501','23','60524','67','19','22','22','22','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10502','23','60525','68','20','23','23','23','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10503','23','60526','69','21','24','24','24','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10504','23','60527','70','22','25','25','25','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10505','23','60528','50','02','05','05','05','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10506','23','60529','51','03','06','06','06','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10507','23','60530','52','04','07','07','07','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10508','23','60531','53','05','08','08','08','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10509','23','60532','54','06','09','09','09','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10510','23','60533','55','07','10','10','10','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10511','23','60534','56','08','11','11','11','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10512','23','60535','57','09','12','12','12','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10513','23','60536','58','10','13','13','13','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10514','23','60537','59','11','14','14','14','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10515','23','60538','60','12','15','15','15','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10516','23','60539','61','13','16','16','16','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10517','23','60540','62','14','17','17','17','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10518','23','60541','63','15','18','18','18','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10519','23','60542','64','16','19','19','19','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10520','23','60543','65','17','20','20','20','HUN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10521','24','60544','66','18','21','21','21','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10522','24','60545','67','19','22','22','22','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10523','24','60546','68','20','23','23','23','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10524','24','60547','69','21','24','24','24','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10525','24','60548','70','22','25','25','25','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10526','24','60549','50','02','05','05','05','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10527','24','60550','51','03','06','06','06','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10528','24','60551','52','04','07','07','07','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10529','24','60552','53','05','08','08','08','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10530','24','60553','54','06','09','09','09','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10531','24','60554','55','07','10','10','10','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10532','24','60555','56','08','11','11','11','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10533','24','60556','57','09','12','12','12','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10534','24','60557','58','10','13','13','13','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10535','24','60558','59','11','14','14','14','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10536','24','60559','60','12','15','15','15','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10537','24','60560','61','13','16','16','16','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10538','24','60561','62','14','17','17','17','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10539','24','60562','63','15','18','18','18','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10540','24','60563','64','16','19','19','19','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10541','24','60564','65','17','20','20','20','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10542','24','60565','66','18','21','21','21','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10543','24','60566','67','19','22','22','22','IRL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10544','25','60567','68','20','23','23','23','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10545','25','60568','69','21','24','24','24','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10546','25','60569','70','22','25','25','25','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10547','25','60570','50','02','05','05','05','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10548','25','60571','51','03','06','06','06','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10549','25','60572','52','04','07','07','07','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10550','25','60573','53','05','08','08','08','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10551','25','60574','54','06','09','09','09','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10552','25','60575','55','07','10','10','10','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10553','25','60576','56','08','11','11','11','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10554','25','60577','57','09','12','12','12','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10555','25','60578','58','10','13','13','13','ISL');	
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10556','25','60579','59','11','14','14','14','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10557','25','60580','60','12','15','15','15','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10558','25','60581','61','13','16','16','16','ISL');	
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10559','25','60582','62','14','17','17','17','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10560','25','60583','63','15','18','18','18','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10561','25','60584','64','16','19','19','19','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10562','25','60585','65','17','20','20','20','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10563','25','60586','66','18','21','21','21','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10564','25','60587','67','19','22','22','22','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10565','25','60588','68','20','23','23','23','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10566','25','60589','69','21','24','24','24','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10567','25','60590','70','22','25','25','25','ISL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10568','25','60591','50','02','05','05','05','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10569','26','60592','51','03','06','06','06','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10570','26','60593','52','04','07','07','07','ISR');	
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10571','26','60594','53','05','08','08','08','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10572','26','60595','54','06','09','09','09','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10573','26','60596','55','07','10','10','10','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10574','26','60597','56','08','11','11','11','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10575','26','60598','57','09','12','12','12','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10576','26','60599','58','10','13','13','13','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10577','26','60600','59','11','14','14','14','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10578','26','60601','60','12','15','15','15','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10579','26','60602','61','13','16','16','16','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10580','26','60603','62','14','17','17','17','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10581','26','60604','63','15','18','18','18','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10582','26','60605','64','16','19','19','19','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10583','26','60606','65','17','20','20','20','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10584','26','60607','66','18','21','21','21','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10585','26','60608','67','19','22','22','22','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10586','26','60609','68','20','23','23','23','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10587','26','60610','69','21','24','24','24','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10588','26','60611','70','22','25','25','25','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10589','26','60612','50','02','05','05','05','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10590','26','60613','51','03','06','06','06','ISR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10591','27','60614','52','04','07','07','07','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10592','27','60615','53','05','08','08','08','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10593','27','60616','54','06','09','09','09','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10594','27','60617','55','07','10','10','10','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10595','27','60618','56','08','11','11','11','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10596','27','60619','57','09','12','12','12','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10597','27','60620','58','10','13','13','13','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10598','27','60621','59','11','14','14','14','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10599','27','60622','60','12','15','15','15','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10600','27','60623','61','13','16','16','16','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10601','27','60624','62','14','17','17','17','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10602','27','60625','63','15','18','18','18','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10603','27','60626','64','16','19','19','19','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10604','27','60627','65','17','20','20','20','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10605','27','60628','66','18','21','21','21','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10606','27','60629','67','19','22','22','22','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10607','27','60630','68','20','23','23','23','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10608','27','60631','69','21','24','24','24','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10609','27','60632','70','22','25','25','25','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10610','27','60633','50','02','05','05','05','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10611','27','60634','51','03','06','06','06','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10612','27','60635','52','04','07','07','07','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10613','27','60636','53','05','08','08','08','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10614','27','60637','54','06','09','09','09','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10615','27','60638','55','07','10','10','10','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10616','27','60639','56','08','11','11','11','EST');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10617','28','60939','57','09','12','12','12','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10618','28','60640','58','10','13','13','13','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10619','28','60641','59','11','14','14','14','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10620','28','60642','60','12','15','15','15','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10621','28','60643','61','13','16','16','16','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10622','28','60644','62','14','17','17','17','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10623','28','60645','63','15','18','18','18','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10624','28','60646','64','16','19','19','19','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10625','28','60647','65','17','20','20','20','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10626','28','60648','66','18','21','21','21','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10627','28','60649','67','19','22','22','22','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10628','28','60650','68','20','23','23','23','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10629','28','60651','69','21','24','24','24','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10630','28','60652','70','22','25','25','25','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10631','28','60653','50','02','05','05','05','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10632','28','60654','51','03','06','06','06','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10633','28','60655','52','04','07','07','07','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10634','28','60656','53','05','08','08','08','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10635','28','60657','54','06','09','09','09','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10636','28','60658','55','07','10','10','10','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10637','28','60659','56','08','11','11','11','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10638','28','60660','57','09','12','12','12','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10639','28','60661','58','10','13','13','13','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10640','28','60662','59','11','14','14','14','ITA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10641','28','60663','60','12','15','15','15','ITA');                                                            
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10642','29','60666','61','13','16','16','16','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10643','29','60667','62','14','17','17','17','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10644','29','60668','63','15','18','18','18','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10645','29','60669','64','16','19','19','19','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10646','29','60670','65','17','20','20','20','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10647','29','60671','66','18','21','21','21','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10648','29','60672','67','19','22','22','22','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10649','29','60673','68','20','23','23','23','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10650','29','60674','69','21','24','24','24','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10651','29','60675','70','22','25','25','25','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10652','29','60676','50','02','05','05','05','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10653','29','60677','51','03','06','06','06','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10654','29','60678','52','04','07','07','07','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10655','29','60679','53','05','08','08','08','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10656','29','60680','54','06','09','09','09','KAZ');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10657','30','60683','55','07','10','10','10','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10658','30','60684','56','08','11','11','11','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10659','30','60685','57','09','12','12','12','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10660','30','60686','58','10','13','13','13','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10661','30','60687','59','11','14','14','14','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10662','30','60688','60','12','15','15','15','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10663','30','60689','61','13','16','16','16','KVX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10664','31','60692','62','14','17','17','17','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10665','31','60693','63','15','18','18','18','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10666','31','60694','64','16','19','19','19','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10667','31','60695','65','17','20','20','20','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10668','31','60696','66','18','21','21','21','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10669','31','60697','67','19','22','22','22','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10670','31','60698','68','20','23','23','23','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10671','31','60699','69','21','24','24','24','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10672','31','60700','70','22','25','25','25','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10673','31','60701','50','02','05','05','05','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10674','31','60702','51','03','06','06','06','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10675','31','60703','52','04','07','07','07','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10676','31','60704','53','05','08','08','08','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10677','31','60705','54','06','09','09','09','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10678','31','60706','55','07','10','10','10','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10679','31','60707','56','08','11','11','11','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10680','31','60708','57','09','12','12','12','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10681','31','60709','58','10','13','13','13','LIE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10682','31','60710','59','11','14','14','14','LIE');                                                                  
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10683','32','60713','60','12','15','15','15','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10684','32','60714','61','13','16','16','16','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10685','32','60715','62','14','17','17','17','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10686','32','60716','63','15','18','18','18','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10687','32','60717','64','16','19','19','19','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10688','32','60718','65','17','20','20','20','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10689','32','60719','66','18','21','21','21','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10690','32','60720','67','19','22','22','22','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10691','32','60721','68','20','23','23','23','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10692','32','60722','69','21','24','24','24','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10693','32','60723','70','22','25','25','25','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10694','32','60724','50','02','05','05','05','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10695','32','60725','51','03','06','06','06','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10696','32','60726','52','04','07','07','07','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10697','32','60727','53','05','08','08','08','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10698','32','60728','54','06','09','09','09','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10699','32','60729','55','07','10','10','10','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10700','32','60730','56','08','11','11','11','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10701','32','60731','57','09','12','12','12','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10702','32','60732','58','10','13','13','13','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10703','32','60733','59','11','14','14','14','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10704','32','60734','60','12','15','15','15','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10705','32','60735','61','13','16','16','16','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10706','32','60736','62','14','17','17','17','LTU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10707','32','60737','63','15','18','18','18','LTU');                                                        
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10708','33','60740','64','16','19','19','19','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10709','33','60741','65','17','20','20','20','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10710','33','60742','66','18','21','21','21','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10711','33','60743','67','19','22','22','22','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10712','33','60744','68','20','23','23','23','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10713','33','60745','69','21','24','24','24','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10714','33','60746','70','22','25','25','25','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10715','33','60747','50','02','05','05','05','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10716','33','60748','51','03','06','06','06','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10717','33','60749','52','04','07','07','07','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10718','33','60750','53','05','08','08','08','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10719','33','60751','54','06','09','09','09','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10720','33','60752','55','07','10','10','10','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10721','33','60753','56','08','11','11','11','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10722','33','60754','57','09','12','12','12','LUX');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10723','33','60755','58','10','13','13','13','LUX');                                                           
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10724','34','60758','59','11','14','14','14','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10725','34','60759','60','12','15','15','15','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10726','34','60760','61','13','16','16','16','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10727','34','60761','62','14','17','17','17','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10728','34','60762','63','15','18','18','18','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10729','34','60763','64','16','19','19','19','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10730','34','60764','65','17','20','20','20','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10731','34','60765','66','18','21','21','21','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10732','34','60766','67','19','22','22','22','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10733','34','60767','68','20','23','23','23','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10734','34','60768','69','21','24','24','24','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10735','34','60769','70','22','25','25','25','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10736','34','60770','50','02','05','05','05','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10737','34','60771','51','03','06','06','06','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10738','34','60772','52','04','07','07','07','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10739','34','60773','53','05','08','08','08','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10740','34','60774','54','06','09','09','09','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10741','34','60775','55','07','10','10','10','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10742','34','60776','56','08','11','11','11','LVA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10743','34','60777','57','09','12','12','12','LVA');                                                              
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10744','35','60780','58','10','13','13','13','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10745','35','60781','59','11','14','14','14','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10746','35','60782','60','12','15','15','15','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10747','35','60783','61','13','16','16','16','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10748','35','60784','62','14','17','17','17','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10749','35','60785','63','15','18','18','18','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10750','35','60786','64','16','19','19','19','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10751','35','60787','65','17','20','20','20','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10752','35','60788','66','18','21','21','21','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10753','35','60789','67','19','22','22','22','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10754','35','60790','68','20','23','23','23','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10755','35','60791','69','21','24','24','24','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10756','35','60792','70','22','25','25','25','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10757','35','60793','50','02','05','05','05','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10758','35','60794','51','03','06','06','06','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10759','35','60795','52','04','07','07','07','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10760','35','60796','53','05','08','08','08','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10761','35','60797','54','06','09','09','09','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10762','35','60798','55','07','10','10','10','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10763','35','60799','56','08','11','11','11','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10764','35','60800','57','09','12','12','12','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10765','35','60801','58','10','13','13','13','MDA');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10766','35','60802','59','11','14','14','14','MDA');                                                      
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10767','36','60805','60','12','15','15','15','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10768','36','60806','61','13','16','16','16','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10769','36','60807','62','14','17','17','17','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10770','36','60808','63','15','18','18','18','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10771','36','60809','64','16','19','19','19','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10772','36','60810','65','17','20','20','20','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10773','36','60811','66','18','21','21','21','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10774','36','60812','67','19','22','22','22','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10775','36','60813','68','20','23','23','23','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10776','36','60814','69','21','24','24','24','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10777','36','60815','70','22','25','25','25','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10778','36','60816','50','02','05','05','05','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10779','36','60817','51','03','06','06','06','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10780','36','60818','52','04','07','07','07','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10781','36','60819','53','05','08','08','08','MKD');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10782','36','60820','54','06','09','09','09','MKD');                                                                    
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10783','37','60823','55','07','10','10','10','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10784','37','60824','56','08','11','11','11','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10785','37','60825','57','09','12','12','12','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10786','37','60826','58','10','13','13','13','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10787','37','60827','59','11','14','14','14','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10788','37','60828','60','12','15','15','15','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10789','37','60829','61','13','16','16','16','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10790','37','60830','62','14','17','17','17','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10791','37','60831','63','15','18','18','18','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10792','37','60832','64','16','19','19','19','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10793','37','60833','65','17','20','20','20','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10794','37','60834','66','18','21','21','21','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10795','37','60835','67','19','22','22','22','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10796','37','60836','68','20','23','23','23','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10797','37','60837','69','21','24','24','24','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10798','37','60838','70','22','25','25','25','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10799','37','60839','50','02','05','05','05','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10800','37','60840','51','03','06','06','06','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10801','37','60841','52','04','07','07','07','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10802','37','60842','53','05','08','08','08','MLT');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10803','37','60843','54','06','09','09','09','MLT');                                                            
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10804','38','60846','55','07','10','10','10','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10805','38','60847','56','08','11','11','11','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10806','38','60848','57','09','12','12','12','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10807','38','60849','58','10','13','13','13','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10808','38','60850','59','11','14','14','14','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10809','38','60851','60','12','15','15','15','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10810','38','60852','61','13','16','16','16','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10811','38','60853','62','14','17','17','17','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10812','38','60854','63','15','18','18','18','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10813','38','60855','64','16','19','19','19','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10814','38','60856','65','17','20','20','20','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10815','38','60857','66','18','21','21','21','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10816','38','60858','67','19','22','22','22','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10817','38','60859','68','20','23','23','23','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10818','38','60860','69','21','24','24','24','MNE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10819','38','60861','70','22','25','25','25','MNE');                                                       
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10820','39','60864','50','02','05','05','05','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10821','39','60865','51','03','06','06','06','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10822','39','60866','52','04','07','07','07','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10823','39','60867','53','05','08','08','08','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10824','39','60868','54','06','09','09','09','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10825','39','60869','55','07','10','10','10','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10826','39','60870','56','08','11','11','11','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10827','39','60871','57','09','12','12','12','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10828','39','60872','58','10','13','13','13','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10829','39','60873','59','11','14','14','14','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10830','39','60874','60','12','15','15','15','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10831','39','60875','61','13','16','16','16','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10832','39','60876','62','14','17','17','17','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10833','39','60877','63','15','18','18','18','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10834','39','60878','64','16','19','19','19','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10835','39','60879','65','17','20','20','20','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10836','39','60880','66','18','21','21','21','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10837','39','60881','67','19','22','22','22','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10838','39','60882','68','20','23','23','23','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10839','39','60883','69','21','24','24','24','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10840','39','60884','70','22','25','25','25','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10841','39','60885','50','02','05','05','05','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10842','39','60886','51','03','06','06','06','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10843','39','60887','52','04','07','07','07','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10844','39','60888','53','05','08','08','08','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10845','39','60889','54','06','09','09','09','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10846','39','60890','55','07','10','10','10','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10847','39','60891','56','08','11','11','11','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10848','39','60892','57','09','12','12','12','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10849','39','60893','58','10','13','13','13','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10850','39','60894','59','11','14','14','14','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10851','39','60895','60','12','15','15','15','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10852','39','60896','61','13','16','16','16','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10853','39','60897','62','14','17','17','17','NED');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10854','39','60898','63','15','18','18','18','NED');                                                      
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10855','40','60901','64','16','19','19','19','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10856','40','60902','65','17','20','20','20','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10857','40','60903','66','18','21','21','21','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10858','40','60904','67','19','22','22','22','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10859','40','60905','68','20','23','23','23','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10860','40','60906','69','21','24','24','24','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10861','40','60907','70','22','25','25','25','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10862','40','60908','50','02','05','05','05','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10863','40','60909','51','03','06','06','06','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10864','40','60910','52','04','07','07','07','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10865','40','60911','53','05','08','08','08','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10866','40','60912','54','06','09','09','09','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10867','40','60913','55','07','10','10','10','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10868','40','60914','56','08','11','11','11','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10869','40','60915','57','09','12','12','12','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10870','40','60916','58','10','13','13','13','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10871','40','60917','59','11','14','14','14','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10872','40','60918','60','12','15','15','15','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10873','40','60919','61','13','16','16','16','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10874','40','60920','62','14','17','17','17','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10875','40','60921','63','15','18','18','18','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10876','40','60922','64','16','19','19','19','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10877','40','60923','65','17','20','20','20','NIR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10878','40','60924','66','18','21','21','21','NIR');                                                                    
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10879','41','60927','67','19','22','22','22','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10880','41','60928','68','20','23','23','23','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10881','41','60929','69','21','24','24','24','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10882','41','60930','70','22','25','25','25','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10883','41','60931','50','02','05','05','05','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10884','41','60932','51','03','06','06','06','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10885','41','60933','52','04','07','07','07','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10886','41','60934','53','05','08','08','08','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10887','41','60935','54','06','09','09','09','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10888','41','60936','55','07','10','10','10','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10889','41','60937','56','08','11','11','11','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10890','41','60938','57','09','12','12','12','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10891','41','69939','58','10','13','13','13','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10892','41','60940','59','11','14','14','14','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10893','41','60941','60','12','15','15','15','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10894','41','60942','61','13','16','16','16','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10895','41','60943','62','14','17','17','17','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10896','41','60944','63','15','18','18','18','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10897','41','60945','64','16','19','19','19','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10898','41','60946','65','17','20','20','20','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10899','41','60947','66','18','21','21','21','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10900','41','60948','67','19','22','22','22','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10901','41','60949','68','20','23','23','23','NOR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10902','41','60950','69','21','24','24','24','NOR');                                                         
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10903','42','60953','70','22','25','25','25','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10904','42','60954','50','02','05','05','05','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10905','42','60955','51','03','06','06','06','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10906','42','60956','52','04','07','07','07','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10907','42','60957','53','05','08','08','08','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10908','42','60958','54','06','09','09','09','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10909','42','60959','55','07','10','10','10','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10910','42','60960','56','08','11','11','11','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10911','42','60961','57','09','12','12','12','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10912','42','60962','58','10','13','13','13','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10913','42','60963','59','11','14','14','14','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10914','42','60964','60','12','15','15','15','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10915','42','60965','61','13','16','16','16','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10916','42','60966','62','14','17','17','17','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10917','42','60967','63','15','18','18','18','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10918','42','60968','64','16','19','19','19','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10919','42','60969','65','17','20','20','20','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10920','42','60970','66','18','21','21','21','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10921','42','60971','67','19','22','22','22','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10922','42','60972','68','20','23','23','23','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10923','42','60973','69','21','24','24','24','POL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10924','42','60974','70','22','25','25','25','POL');                                                          
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10925','43','60977','50','02','05','05','05','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10926','43','60978','51','03','06','06','06','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10927','43','60979','52','04','07','07','07','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10928','43','60980','53','05','08','08','08','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10929','43','60981','54','06','09','09','09','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10930','43','60982','55','07','10','10','10','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10931','43','60983','56','08','11','11','11','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10932','43','60984','57','09','12','12','12','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10933','43','60985','58','10','13','13','13','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10934','43','60986','59','11','14','14','14','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10935','43','60987','60','12','15','15','15','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10936','43','60988','61','13','16','16','16','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10937','43','60989','62','14','17','17','17','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10938','43','60990','63','15','18','18','18','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10939','43','60991','64','16','19','19','19','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10940','43','60992','65','17','20','20','20','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10941','43','60993','66','18','21','21','21','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10942','43','60994','67','19','22','22','22','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10943','43','60995','68','20','23','23','23','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10944','43','60996','69','21','24','24','24','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10945','43','60997','70','22','25','25','25','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10946','43','60998','50','02','05','05','05','POR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10947','43','60999','51','03','06','06','06','POR');                                                          
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10948','44','61002','52','04','07','07','07','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10949','44','61003','53','05','08','08','08','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10950','44','61004','54','06','09','09','09','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10951','44','61005','55','07','10','10','10','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10952','44','61006','56','08','11','11','11','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10953','44','61007','57','09','12','12','12','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10954','44','61008','58','10','13','13','13','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10955','44','61009','59','11','14','14','14','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10956','44','61010','60','12','15','15','15','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10957','44','61011','61','13','16','16','16','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10958','44','61012','62','14','17','17','17','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10959','44','61013','63','15','18','18','18','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10960','44','61014','64','16','19','19','19','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10961','44','61015','65','17','20','20','20','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10962','44','61016','66','18','21','21','21','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10963','44','61017','67','19','22','22','22','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10964','44','61018','68','20','23','23','23','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10965','44','61019','69','21','24','24','24','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10966','44','61020','70','22','25','25','25','ROU');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10967','44','61021','50','02','05','05','05','ROU');                                                     
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10968','45','61024','51','03','06','06','06','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10969','45','61025','52','04','07','07','07','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10970','45','61026','53','05','08','08','08','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10971','45','61027','54','06','09','09','09','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10972','45','61028','55','07','10','10','10','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10973','45','61029','56','08','11','11','11','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10974','45','61030','57','09','12','12','12','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10975','45','61031','58','10','13','13','13','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10976','45','61032','59','11','14','14','14','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10977','45','61033','60','12','15','15','15','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10978','45','61034','61','13','16','16','16','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10979','45','61035','62','14','17','17','17','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10980','45','61036','63','15','18','18','18','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10981','45','61037','64','16','19','19','19','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10982','45','61038','65','17','20','20','20','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10983','45','61039','66','18','21','21','21','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10984','45','61040','67','19','22','22','22','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10985','45','61041','68','20','23','23','23','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10986','45','61042','69','21','24','24','24','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10987','45','61043','70','22','25','25','25','SCO');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10988','45','61044','50','02','05','05','05','SCO');                                                         
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10989','46','61047','51','03','06','06','06','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10990','46','61048','52','04','07','07','07','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10991','46','61049','53','05','08','08','08','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10992','46','61050','54','06','09','09','09','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10993','46','61051','55','07','10','10','10','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10994','46','61052','56','08','11','11','11','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10995','46','61053','57','09','12','12','12','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10996','46','61054','58','10','13','13','13','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10997','46','61055','59','11','14','14','14','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10998','46','61056','60','12','15','15','15','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('10999','46','61057','61','13','16','16','16','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11000','46','61058','62','14','17','17','17','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11001','46','61059','63','15','18','18','18','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11002','46','61060','64','16','19','19','19','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11003','46','61061','65','17','20','20','20','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11004','46','61062','66','18','21','21','21','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11005','46','61063','67','19','22','22','22','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11006','46','61064','68','20','23','23','23','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11007','46','61065','69','21','24','24','24','SMR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11008','46','61066','70','22','25','25','25','SMR');                                                         
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11009','47','61069','50','02','05','05','05','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11010','47','61070','51','03','06','06','06','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11011','47','61071','52','04','07','07','07','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11012','47','61072','53','05','08','08','08','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11013','47','61073','54','06','09','09','09','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11014','47','61074','55','07','10','10','10','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11015','47','61075','56','08','11','11','11','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11016','47','61076','57','09','12','12','12','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11017','47','61077','58','10','13','13','13','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11018','47','61078','59','11','14','14','14','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11019','47','61079','60','12','15','15','15','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11020','47','61080','61','13','16','16','16','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11021','47','61081','62','14','17','17','17','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11022','47','61082','63','15','18','18','18','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11023','47','61083','64','16','19','19','19','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11024','47','61084','65','17','20','20','20','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11025','47','61085','66','18','21','21','21','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11026','47','61086','67','19','22','22','22','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11027','47','61087','68','20','23','23','23','SRB');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11028','47','61088','69','21','24','24','24','SRB');                                                                 
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11029','48','61091','70','22','25','25','25','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11030','48','61092','50','02','05','05','05','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11031','48','61093','51','03','06','06','06','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11032','48','61094','52','04','07','07','07','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11033','48','61095','53','05','08','08','08','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11034','48','61096','54','06','09','09','09','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11035','48','61097','55','07','10','10','10','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11036','48','61098','56','08','11','11','11','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11037','48','61099','57','09','12','12','12','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11038','48','61100','58','10','13','13','13','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11039','48','61101','59','11','14','14','14','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11040','48','61102','60','12','15','15','15','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11041','48','61103','61','13','16','16','16','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11042','48','61104','62','14','17','17','17','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11043','48','61105','63','15','18','18','18','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11044','48','61106','64','16','19','19','19','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11045','48','61107','65','17','20','20','20','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11046','48','61108','66','18','21','21','21','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11047','48','61109','67','19','22','22','22','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11048','48','61110','68','20','23','23','23','SUI');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11049','48','61111','69','21','24','24','24','SUI');                                                           
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11050','49','61114','70','22','25','25','25','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11051','49','61115','50','02','05','05','05','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11052','49','61116','51','03','06','06','06','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11053','49','61117','52','04','07','07','07','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11054','49','61118','53','05','08','08','08','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11055','49','61119','54','06','09','09','09','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11056','49','61120','55','07','10','10','10','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11057','49','61121','56','08','11','11','11','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11058','49','61122','57','09','12','12','12','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11059','49','61123','58','10','13','13','13','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11060','49','61124','59','11','14','14','14','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11061','49','61125','60','12','15','15','15','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11062','49','61126','61','13','16','16','16','SVK');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11063','49','61127','62','14','17','17','17','SVK');                                                                
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11064','50','61130','63','15','18','18','18','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11065','50','61131','64','16','19','19','19','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11066','50','61132','65','17','20','20','20','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11067','50','61133','66','18','21','21','21','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11068','50','61134','67','19','22','22','22','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11069','50','61135','68','20','23','23','23','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11070','50','61136','69','21','24','24','24','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11071','50','61137','70','22','25','25','25','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11072','50','61138','50','02','05','05','05','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11073','50','61139','51','03','06','06','06','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11074','50','61140','52','04','07','07','07','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11075','50','61141','53','05','08','08','08','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11086','50','61142','54','06','09','09','09','SVN');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11077','50','61143','55','07','10','10','10','SVN');                                                         
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11078','51','61146','56','08','11','11','11','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11079','51','61147','57','09','12','12','12','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11080','51','61148','58','10','13','13','13','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11081','51','61149','59','11','14','14','14','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11082','51','61150','60','12','15','15','15','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11083','51','61151','61','13','16','16','16','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11084','51','61152','62','14','17','17','17','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11085','51','61153','63','15','18','18','18','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11086','51','61154','64','16','19','19','19','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11087','51','61155','65','17','20','20','20','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11088','51','61156','66','18','21','21','21','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11089','51','61157','67','19','22','22','22','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11090','51','61158','68','20','23','23','23','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11091','51','61159','69','21','24','24','24','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11092','51','61160','70','22','25','25','25','SWE');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11093','51','61161','50','02','05','05','05','SWE');                                                                           
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11094','52','61164','51','03','06','06','06','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11095','52','61165','52','04','07','07','07','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11096','52','61166','53','05','08','08','08','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11097','52','61167','54','06','09','09','09','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11098','52','61168','55','07','10','10','10','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11099','52','61169','56','08','11','11','11','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11100','52','61170','57','09','12','12','12','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11101','52','61171','58','10','13','13','13','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11102','52','61172','59','11','14','14','14','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11103','52','61173','60','12','15','15','15','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11104','52','61174','61','13','16','16','16','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11105','52','61175','62','14','17','17','17','TUR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11106','52','61176','63','15','18','18','18','TUR');                                                                    
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11107','53','61179','64','16','19','19','19','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11108','53','61180','65','17','20','20','20','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11109','53','61181','66','18','21','21','21','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11110','53','61182','67','19','22','22','22','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11111','53','61183','68','20','23','23','23','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11112','53','61184','69','21','24','24','24','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11113','53','61185','70','22','25','25','25','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11114','53','61186','50','02','05','05','05','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11115','53','61187','51','03','06','06','06','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11116','53','61188','52','04','07','07','07','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11117','53','61189','53','05','08','08','08','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11118','53','61190','54','06','09','09','09','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11119','53','61191','55','07','10','10','10','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11120','53','61192','56','08','11','11','11','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11121','53','61193','57','09','12','12','12','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11122','53','61194','58','10','13','13','13','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11123','53','61195','59','11','14','14','14','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11124','53','61196','60','12','15','15','15','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11125','53','61197','61','13','16','16','16','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11126','53','61198','62','14','17','17','17','UKR');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11127','53','61199','63','15','18','18','18','UKR');                                                                   
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11128','54','61202','64','16','19','19','19','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11129','54','61203','65','17','20','20','20','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11130','54','61204','66','18','21','21','21','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11131','54','61205','67','19','22','22','22','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11132','54','61206','68','20','23','23','23','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11133','54','61207','69','21','24','24','24','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11134','54','61208','70','22','25','25','25','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11135','54','61209','50','02','05','05','05','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11136','54','61210','51','03','06','06','06','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11137','54','61211','52','04','07','07','07','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11138','54','61212','53','05','08','08','08','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11139','54','61213','54','06','09','09','09','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11140','54','61214','55','07','10','10','10','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11141','54','61215','56','08','11','11','11','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11142','54','61216','57','09','12','12','12','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11143','54','61217','58','10','13','13','13','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11144','54','61218','59','11','14','14','14','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11145','54','61219','60','12','15','15','15','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11146','54','61220','61','13','16','16','16','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11147','54','61221','62','14','17','17','17','WAL');
INSERT INTO Jugadores (cod_jugador, cod_equipo, cod_persona, participaciones_historico, goles_historico, partidos_ganados_historico, partidos_empatados_historico,partidos_perdidos_historico,cod_pais) VALUES ('11148','54','61222','63','15','18','18','18','WAL')

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


------		Grupo A	  (incidencia de goles) 

-- BULGARIA 4 - 3 LUXEMBURGO
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10191','33','7','05','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10192','33','7','10','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10193','33','7','20','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10194','33','7','30','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10719','33','7','40','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10720','33','7','50','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10721','33','7','60','09/06/2016');

-- SUECIA 1 - 1 HOLANDA                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11079','39','7','11','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','10832','39','7','21','09/06/2016');
                                                                                                                                  
-- BIELORRUSIA 0 - 0 FRANCIA
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','','18','','','09/06/2016');

-- LUXEMBURGO 0 - 1 SUECIA 
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10722','51','7','07','10/07/2016');
                                                                                                                                  
-- HOLANDA 4 - 1 BIELORUSSIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10833','08','7','12','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10834','08','7','17','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10835','08','7','22','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10836','08','7','76','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10168','08','7','90','10/07/2016');

-- FRANCIA 4 - 1 BULGARIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10400','09','7','10','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10401','09','7','15','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10402','09','7','20','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10403','09','7','50','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10192','09','7','87','10/07/2016');

-- SUECIA 3 - 0 BULGARIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11079','09','7','01','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11080','09','7','50','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11081','09','7','57','10/10/2016');

--BIELORRUSIA 1 - 1 LUXEMBURGO
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10162','33','7','10','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10722','33','7','20','10/10/2016');
                                                                                                                                  
-- HOLANDA 0 - 1 FRANCIA
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10402','18','7','','10/10/2016');

-- FRANCIA 2 - 1 SUECIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10402','51','7','10','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10401','51','7','30','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','11079','51','7','70','11/11/2016');

-- BULGARIA 1 -0 BIELORRUSIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10191','08','7','09','11/13/2016');

--LUXEMBURGO - 1 - 3 HOLANDA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10723','39','7','11','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10833','39','7','21','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10834','39','7','31','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10835','39','7','41','11/13/2016');
                                                                                                                                  
--SUECIA 4 - 0 BIELORRUSIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11086','08','7','41','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11077','08','7','52','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11078','08','7','63','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11079','08','7','74','03/25/2017');
                                                                                                                                  
--LUXEMBURGO 1 - 3 FRANCIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10719','18','7','10','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10400','18','7','20','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10401','18','7','30','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10402','18','7','40','03/25/2017');
                                                                                                                                  
--BULGARIA 2 - 0 HOLANDA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10192','39','7','11','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10193','39','7','56','03/25/2017');

--BIELORRUSIA 2 - 1 BULGARIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10163','09','7','10','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10164','09','7','22','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10191','09','7','33','06/09/2017');

--HOLANDA 5 - 0 LUXEMBURGO
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10835','33','7','44','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10836','33','7','55','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10837','33','7','67','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10838','33','7','89','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10839','33','7','90','06/09/2017');

--SUECIA 2 -- 1 FRANCIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11077','18','7','01','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11078','18','7','09','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','10399','18','7','57','06/09/2017');

--LUX 1 - 0 BIELORRUSIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10719','08','7','17','08/31/2017');

--BULGARIA 3 - 2 SUECIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10188','51','7','22','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10189','51','7','33','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10190','51','7','44','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','11073','51','7','55','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','11074','51','7','66','08/31/2017');

--FRANCIA 4 - 0 HOLANDA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10400','39','7','10','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10401','39','7','20','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10402','39','7','30','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10403','39','7','40','08/31/2017');

--BIELORRUSIA 0 - 4 SUECIA
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','11086','51','7','17','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','11077','51','7','27','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','11079','51','7','37','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','11080','51','7','47','09/03/2017');
                                                                                                                                  
--HOLANDA 3 - 1 bulgaria
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10834','09','7','57','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10835','09','7','67','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10836','09','7','77','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10190','09','7','87','09/03/2017');

--francia 0 - 0 luxemburgo
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','','33',0'','','09/03/2017');

--suecia 8 - 0 luxemburgo
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11080','33','7','10','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11080','33','7','20','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11081','33','7','25','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11080','33','7','30','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11081','33','7','35','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11082','33','7','70','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11083','33','7','75','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11084','33','7','85','10/07/2017');

--bielorrusia 1 - 3 holanda
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10163','39','7','55','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10834','39','7','66','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10835','39','7','77','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('08','10836','39','7','88','10/07/2017');

--bulgaria 0 - 1 francia
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('09','10400','18','7','19','10/07/2017');
                                                                                                                                                                                                                                                                                                                                                                                                  
--francia 2 - 1 bielorussia
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10401','08','7','19','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10402','08','7','29','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('18','10163','08','7','59','10/10/2017');

--lux 1 - 1 bulgaria
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10723','09','7','69','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('33','10190','09','7','79','10/10/2017');

--holanda 2 - 0 suecia
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10834','51','7','18','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('39','10835','51','7','48','10/10/2017');


-- GRUPO B

--0-0
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','','24','','09/06/2016');
--2-0
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11043','43','7','11','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11044','43','7','90','09/06/2016');
--0-1                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','10730','34','7','12','09/06/2016');                                                                                                                                                
--0-2                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10416','19','7','13','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10417','19','7','87','10/07/2016');
--6-0                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10930','02','7','10','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10931','02','7','20','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10932','02','7','30','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10933','02','7','40','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10934','02','7','50','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10935','02','7','60','10/07/2016');
--2-3                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10533','48','7','40','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10534','48','7','50','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','11043','48','7','60','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','11043','48','7','45','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','11044','48','7','87','10/07/2016');
--1-2                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','10032','48','7','10','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','11043','48','7','20','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','11044','48','7','30','10/10/2016');
--0-6                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10930','43','7','11','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10931','43','7','21','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10932','43','7','31','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10933','43','7','41','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10934','43','7','51','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10935','43','7','61','10/10/2016');
--0-2                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10533','24','7','10','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10534','24','7','20','10/10/2016');
--2-0                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11043','19','7','70','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11043','19','7','80','11/13/2016');
--4-0                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10533','02','7','80','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10534','02','7','85','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10535','02','7','87','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10536','02','7','90','11/13/2016');
--4-1                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10930','34','7','12','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10931','34','7','24','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10932','34','7','36','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10933','34','7','48','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10731','34','7','54','11/13/2016');
--0-0                                                                                                                                              
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','','19','','03/25/2017');
--1-0                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11045','34','7','11','03/25/2017');
--3-0                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10930','24','7','22','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10931','24','7','32','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10932','24','7','42','03/25/2017');
--0-2                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','11046','48','7','52','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','11047','48','7','62','06/09/2017');
--0-3                                                                                                                                             
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10930','43','7','72','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10931','43','7','82','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10932','43','7','89','06/09/2017');
--1-0                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','10031','24','7','17','06/09/2017');
--3-0                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11043','02','7','18','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11044','02','7','28','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11045','02','7','38','08/31/2017');
--3-1                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10533','34','7','18','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10534','34','7','28','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10535','34','7','38','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10732','34','7','48','08/31/2017');
--5-1                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10930','19','7','18','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10931','19','7','28','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10932','19','7','38','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10933','19','7','48','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10934','19','7','11','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10416','19','7','90','08/31/2017');
--1-0                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','10417','02','7','87','09/03/2017');
--0-1                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10933','43','7','89','09/03/2017');
--0-3                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','11043','48','7','18','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','11044','48','7','28','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','11045','48','7','38','09/03/2017');
--0-0                                                                                                                                              
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('19','','34','7','10/07/2017');
--0-2                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','10933','43','7','52','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('02','10934','43','7','67','10/07/2017');
--5-2                                                                                                                                             
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11043','24','7','18','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11044','24','7','28','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11045','24','7','38','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11046','24','7','48','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','11047','24','7','33','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','10533','24','7','90','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','10534','24','7','87','10/07/2017');
--1-0                                                                                                                                              
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('24','10536','19','7','14','10/10/2017');
--4-0                                                                                                                                             
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10740','02','7','18','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10741','02','7','28','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10742','02','7','38','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('34','10743','02','7','48','10/10/2017');
--2-0                                                                                                                                               
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10932','48','7','10','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('43','10933','48','7','20','10/10/2017');


--GRUPO C
--0-1
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10104','05','7','10','09/04/2016');
--0-0                                                                                                                                        
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','','40','7','12','09/04/2016');
--0-3                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10464','21','7','14','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10465','21','7','15','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10466','21','7','16','09/04/2016');
--1-0                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10104','41','7','18','10/08/2016');
--3-0                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10464','12','7','20','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10465','12','7','21','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10466','12','7','22','10/08/2016');
--4-0                                                                                                                                         
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10864','46','7','24','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10865','46','7','25','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10866','46','7','26','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10867','46','7','27','10/08/2016');
--0-0                                                                                                                                        
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','','05','7','29','10/11/2016');
--2-0                                                                                                                                         
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10464','40','7','31','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10465','40','7','32','10/11/2016');
--4-1                                                                                                                                       
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10885','46','7','34','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10886','46','7','35','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10887','46','7','36','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10888','46','7','37','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10997','46','7','38','10/11/2016');
--2-1                                                                                                                                         
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10259','41','7','40','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10260','41','7','41','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10888','41','7','42','11/11/2016');
--4-0                                                                                                                                         
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10864','05','7','44','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10865','05','7','45','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10866','05','7','46','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10867','05','7','47','11/11/2016');
--0-8                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10464','21','7','49','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10465','21','7','50','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10466','21','7','51','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10467','21','7','52','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10468','21','7','53','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10469','21','7','54','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10470','21','7','55','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10471','21','7','56','11/11/2016');
--1-4                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10104','21','7','58','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10464','21','7','59','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10465','21','7','60','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10466','21','7','61','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10467','21','7','62','03/26/2017');
--0-6                                                                                                                                         
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10259','12','7','65','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10260','12','7','66','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10261','12','7','67','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10262','12','7','68','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10263','12','7','69','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10264','12','7','70','03/26/2017');
--2-0                                                                                                                                         
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10865','41','7','73','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10866','41','7','74','03/26/2017');
--0-1                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10867','40','7','76','06/10/2017');
--7-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10464','46','7','78','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10465','46','7','79','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10466','46','7','80','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10467','46','7','81','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10468','46','7','82','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10469','46','7','83','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10470','46','7','84','06/10/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10888','12','7','86','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10263','12','7','87','06/10/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10263','21','7','89','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10469','21','7','90','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10470','21','7','10','09/01/2017');
--2-0                                                                                                                                           11
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10887','05','7','12','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10888','05','7','13','09/01/2017');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10865','40','7','15','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10866','40','7','16','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10867','40','7','17','09/01/2017');
--5-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10098','46','7','19','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10099','46','7','20','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10100','46','7','21','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10101','46','7','22','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10102','46','7','23','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10997','46','7','24','09/04/2017');
--6-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10464','41','7','26','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10465','41','7','27','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10466','41','7','28','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10467','41','7','29','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10468','41','7','30','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10469','41','7','31','09/04/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10865','12','7','33','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10866','12','7','34','09/04/2017');
--1-2                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10101','12','7','36','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10263','12','7','37','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('05','10264','12','7','38','10/05/2017');
--1-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10866','21','7','40','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10467','21','7','41','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10468','21','7','42','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','10469','21','7','43','10/05/2017');
--0-8                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10885','41','7','45','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10886','41','7','46','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10887','41','7','47','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10888','41','7','48','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10889','41','7','49','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10890','41','7','50','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10891','41','7','51','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('46','10892','41','7','52','10/05/2017');
--5-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10260','46','7','54','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10261','46','7','55','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10262','46','7','56','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10263','46','7','57','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('12','10264','46','7','58','10/08/2017');
--5-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10464','05','7','60','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10465','05','7','61','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10466','05','7','62','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10467','05','7','63','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10468','05','7','64','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('21','10101','05','7','65','10/08/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('41','10890','40','7','67','10/08/2017');


-- grupo D                                                                                                                                    
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10450','04','7','71','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10081','04','7','72','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10082','04','7','73','09.05.2016');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11140','35','7','75','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11141','35','7','76','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11142','35','7','77','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11143','35','7','78','09.05.2016');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11020','25','7','80','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11021','25','7','81','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','10563','25','7','82','09.05.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','10564','25','7','83','09.05.2016');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','11020','47','7','85','10.06.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','11021','47','7','86','10.06.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','11022','47','7','87','10.06.2016');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10563','20','7','89','10.06.2016');
--2-2                                                                                                                                        
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10081','54','7','10','10.06.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10082','54','7','11','10.06.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','11142','54','7','12','10.06.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','11143','54','7','13','10.06.2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11143','20','7','15','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','10451','20','7','16','10.09.2016');
--1-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10751','25','7','18','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10563','25','7','19','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10564','25','7','20','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10565','25','7','21','10.09.2016');
--3-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11020','04','7','23','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11021','04','7','24','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11022','04','7','25','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','10081','04','7','26','10.09.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','10082','04','7','27','10.09.2016');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10564','25','7','29','11.12.2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10451','35','7','31','11.12.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10751','35','7','32','11.12.2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11143','47','7','34','11.12.2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11021','47','7','35','11.12.2016');
--1-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10451','47','7','37','03.24.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','11020','47','7','38','03.24.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','11021','47','7','39','03.24.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','11022','47','7','40','03.24.2017');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','','54','7','42','03.24.2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10081','35','7','44','03.24.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10082','35','7','45','03.24.2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10564','04','7','47','06.11.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10081','04','7','48','06.11.2017');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10751','20','7','50','06.11.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10752','20','7','51','06.11.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10451','20','7','52','06.11.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10452','20','7','53','06.11.2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11022','54','7','55','06.11.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11143','54','7','56','06.11.2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10452','25','7','58','09.02.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','10564','25','7','59','09.02.2017');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11020','35','7','61','09.02.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11021','35','7','62','09.02.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11022','35','7','63','09.02.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','11144','04','7','65','09.02.2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10081','20','7','67','09.05.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10451','20','7','68','09.05.2017');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','11144','54','7','70','09.05.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','11145','54','7','71','09.05.2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','11022','47','7','73','09.05.2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('20','11145','54','7','75','10.06.2017');
--3-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10081','47','7','77','10.06.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10082','47','7','78','10.06.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','10083','47','7','79','10.06.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','11022','47','7','80','10.06.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('04','11023','47','7','81','10.06.2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10564','35','7','83','10.06.2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10565','35','7','84','10.06.2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('35','10081','04','7','86','10.09.2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('47','11022','20','7','88','10.09.2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('54','10564','25','7','90','10.09.2017');
                                                                                                                                              

                                                                                                                                      
--grupo E                                                                                                                                     
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10282','03','7','13','09/04/2016');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10647','42','7','15','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10648','42','7','16','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10915','42','7','17','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10916','42','7','18','09/04/2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10959','38','7','20','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10812','38','7','21','09/04/2016');
--0-5                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10959','44','7','23','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10960','44','7','24','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10961','44','7','25','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10962','44','7','26','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10963','44','7','27','10/08/2016');
--5-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10647','29','7','29','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10648','29','7','30','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10649','29','7','31','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10650','29','7','32','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10651','29','7','33','10/08/2016');
--3-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10915','13','7','35','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10916','13','7','36','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10917','13','7','37','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10282','13','7','38','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10283','13','7','39','10/08/2016');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','','44','7','41','10/11/2016');
--2-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10916','03','7','43','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10917','03','7','44','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10043','03','7','45','10/11/2016');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10812','38','7','47','10/11/2016');
--3-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10043','38','7','49','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10044','38','7','50','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10045','38','7','51','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10812','38','7','52','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10813','38','7','53','11/11/2016');
--4-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10282','29','7','55','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10283','29','7','56','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10284','29','7','57','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10285','29','7','58','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10647','29','7','59','11/11/2016');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10915','42','7','61','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10916','42','7','62','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10917','42','7','63','11/11/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10043','29','7','65','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10044','29','7','66','03/26/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10812','42','7','68','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10910','42','7','69','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10911','42','7','70','03/26/2017');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','','13','7','72','03/26/2017');
--1-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10648','13','7','74','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10283','13','7','75','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10284','13','7','76','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10285','13','7','77','06/10/2017');
--4-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10812','03','7','79','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10813','03','7','80','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10814','03','7','81','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10815','03','7','82','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10043','03','7','83','06/10/2017');
--3-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10917','44','7','85','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10918','44','7','86','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10919','44','7','87','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10959','44','7','88','06/10/2017');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10812','38','7','90','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10813','38','7','10','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10814','38','7','11','09/01/2017');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10283','42','7','13','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10284','42','7','14','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10285','42','7','15','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10286','42','7','16','09/01/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10959','03','7','18','09/01/2017');
--1-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10043','13','7','20','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10283','13','7','21','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10284','13','7','22','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10285','13','7','23','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10286','13','7','24','09/04/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10812','44','7','26','09/04/2017');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10917','29','7','28','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10918','29','7','29','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10919','29','7','30','09/04/2017');
--1-6                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10043','42','7','32','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10909','42','7','33','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10910','42','7','34','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10911','42','7','35','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10912','42','7','36','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10913','42','7','37','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('03','10914','42','7','38','10/05/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('38','10285','13','7','40','10/05/2017');
--3-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10961','29','7','42','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10962','29','7','43','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10963','29','7','44','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('44','10647','29','7','45','10/05/2017');
--4-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10909','38','7','47','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10910','38','7','48','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10911','38','7','49','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10912','38','7','50','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10812','38','7','51','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('42','10813','38','7','52','10/08/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10285','44','7','54','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','10963','44','7','55','10/08/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10043','03','7','57','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('29','10647','03','7','58','10/08/2017');
               


                                                                                                                                  
-- GRUPO F                                                                                                                                    
                                                                                                                                              
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','10296','14','7','63','09/04/2016');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10694','50','7','65','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10695','50','7','66','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','11070','50','7','67','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','11071','50','7','68','09/04/2016');
--1-5                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10796','45','7','70','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10977','45','7','71','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10978','45','7','72','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10979','45','7','73','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10980','45','7','74','09/04/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10981','45','7','75','09/04/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10299','37','7','77','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10300','37','7','78','10/08/2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10980','32','7','80','10/08/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10694','32','7','81','10/08/2016');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11072','49','7','83','10/08/2016');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','','14','7','85','10/11/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10694','37','7','87','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10695','37','7','88','10/11/2016');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11054','45','7','90','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11055','45','7','10','10/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11056','45','7','11','10/11/2016');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11054','32','7','13','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11055','32','7','14','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11056','32','7','15','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11057','32','7','16','11/11/2016');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10300','45','7','18','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10301','45','7','19','11/11/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10302','45','7','20','11/11/2016');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','11073','50','7','22','11/11/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10300','32','7','24','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10301','32','7','25','03/26/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10980','50','7','27','03/26/2017');
--1-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10796','49','7','29','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','11055','49','7','30','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','11056','49','7','31','03/26/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','11057','49','7','32','03/26/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11071','37','7','34','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11072','37','7','35','06/10/2017');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10980','14','7','37','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10981','14','7','38','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10302','14','7','39','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10303','14','7','40','06/10/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10695','49','7','42','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','11055','49','7','43','06/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','11056','49','7','44','06/10/2017');
--1-0                                                                                                                                          
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11056','50','7','46','09/01/2017');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10980','45','7','48','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10981','45','7','49','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10982','45','7','50','09/01/2017');
--0-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10302','14','7','52','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10303','14','7','53','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10304','14','7','54','09/01/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10305','14','7','55','09/01/2017');
--2-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10304','49','7','57','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10305','49','7','58','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','11056','49','7','59','09/04/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10980','37','7','61','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10981','37','7','62','09/04/2017');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11070','32','7','64','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11071','32','7','65','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11072','32','7','66','09/04/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11073','32','7','67','09/04/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('45','10983','49','7','69','10/05/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('14','10305','50','7','71','10/05/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10797','32','7','73','10/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('37','10694','32','7','74','10/05/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('32','10305','14','7','76','10/08/2017');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11056','37','7','78','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11057','37','7','79','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('49','11058','37','7','80','10/08/2017');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11075','45','7','82','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','11076','45','7','83','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','10983','45','7','84','10/08/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('50','10984','45','7','85','10/08/2017');
          
                                                                                                                               
-- Grupo H                                                                                                                                                                                                                                    '',     '7','',            );
--8-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10322','31','7','89','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10323','31','7','90','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10324','31','7','10','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10325','31','7','11','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10326','31','7','12','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10327','31','7','13','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10328','31','7','14','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10329','31','7','15','09/05/2016');
--1-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10607','28','7','17','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10620','28','7','18','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10621','28','7','19','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10622','28','7','20','09/05/2016');
--2-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10015','36','7','22','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10016','36','7','23','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10771','36','7','24','09/06/2016');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10015','01','7','26','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10016','01','7','27','10/06/2016');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10771','27','7','29','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10607','27','7','30','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10608','27','7','31','10/06/2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10620','15','7','33','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10326','15','7','34','10/06/2016');
--2-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10607','31','7','36','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10608','31','7','37','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10667','31','7','38','10/09/2016');
--2-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10771','28','7','40','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10772','28','7','41','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10620','28','7','42','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10621','28','7','43','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10622','28','7','44','10/09/2016');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10326','15','7','46','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10327','15','7','47','10/09/2016');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10323','36','7','49','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10324','36','7','50','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10325','36','7','51','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10326','36','7','52','11/12/2016');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10607','27','7','54','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10608','27','7','55','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10609','27','7','56','11/12/2016');
--0-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10620','28','7','58','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10621','28','7','59','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10622','28','7','60','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10623','28','7','61','11/12/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10622','01','7','63','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10623','01','7','64','03/24/2017');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10771','36','7','66','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10772','36','7','67','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10773','36','7','68','03/24/2017');
--4-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10323','27','7','70','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10324','27','7','71','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10325','27','7','72','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10326','27','7','73','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10609','27','7','74','03/24/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10773','15','7','76','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10325','15','7','77','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10326','15','7','78','06/11/2017');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10013','01','7','80','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10014','01','7','81','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10015','01','7','82','06/11/2017');
--5-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10620','31','7','84','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10621','31','7','85','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10622','31','7','86','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10623','31','7','87','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10624','31','7','88','06/11/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10013','31','7','90','09/02/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10014','31','7','10','09/02/2017');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10325','28','7','12','09/02/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10326','28','7','13','09/02/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10327','28','7','14','09/02/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10773','36','7','16','09/02/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10624','27','7','18','09/05/2017');
--0-8                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10322','15','7','20','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10323','15','7','21','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10324','15','7','22','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10325','15','7','23','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10326','15','7','24','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10327','15','7','25','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10328','15','7','26','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10329','15','7','27','09/05/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10773','01','7','29','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10015','01','7','30','09/05/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10624','36','7','32','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','10773','36','7','33','10/06/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('31','10609','27','7','35','10/06/2017');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10327','01','7','37','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10328','01','7','38','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('15','10329','01','7','39','10/06/2017');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10773','31','7','41','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10774','31','7','42','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10775','31','7','43','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('36','10776','31','7','44','10/09/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('27','10329','15','7','46','10/09/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('01','10624','28','7','48','10/09/2017');


                                                                                                                                                   
-- grupo H                                                                                                                                    
--1-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10492','23','7','52','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10503','23','7','53','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10504','23','7','54','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10505','23','7','55','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10506','23','7','56','09/06/2016');
--5-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10136','16','7','58','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10137','16','7','59','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10138','16','7','60','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10139','16','7','61','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10140','16','7','62','09/06/2016');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10121','06','7','64','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10122','06','7','65','09/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10123','06','7','66','09/06/2016');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10353','22','7','68','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10354','22','7','69','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10355','22','7','70','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10356','22','7','71','10/07/2016');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10121','07','7','73','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10122','07','7','74','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10123','07','7','75','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10124','07','7','76','10/07/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10504','11','7','78','10/07/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10505','11','7','79','10/07/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10139','11','7','81','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10140','11','7','82','10/10/2016');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10504','23','7','84','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10505','23','7','85','10/10/2016');
--0-6                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10121','06','7','87','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10122','06','7','88','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10123','06','7','89','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10124','06','7','90','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10125','06','7','10','10/10/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10126','06','7','11','10/10/2016');
--3-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10225','22','7','13','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10226','22','7','14','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10227','22','7','15','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10492','22','7','16','11/13/2016');
--8-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10121','16','7','18','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10122','16','7','19','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10123','16','7','20','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10124','16','7','21','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10125','16','7','22','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10126','16','7','23','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10127','16','7','24','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10128','16','7','25','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10356','16','7','26','11/13/2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10504','07','7','28','11/13/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10139','07','7','29','11/13/2016');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','','16','7','31','03/25/2017');
--5-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10136','22','7','33','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10137','22','7','34','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10138','22','7','35','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10139','22','7','36','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10140','22','7','37','03/25/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10122','23','7','40','03/25/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10505','23','7','41','03/25/2017');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10122','06','7','43','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10123','06','7','44','06/09/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10492','11','7','46','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10225','11','7','47','06/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10226','11','7','48','06/09/2017');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','','23','7','50','06/09/2017');
--9-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10121','22','7','52','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10122','22','7','53','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10123','22','7','54','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10124','22','7','55','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10125','22','7','56','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10126','22','7','57','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10127','22','7','58','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10128','22','7','59','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10129','22','7','60','08/31/2017');
--3-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10225','07','7','62','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10226','07','7','63','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10227','07','7','64','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10139','07','7','65','08/31/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10140','07','7','66','08/31/2017');
--0-0                                                                                                                                           
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','','16','7','68','08/31/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10354','11','7','70','09/03/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10504','06','7','72','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10129','06','7','73','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10130','06','7','74','09/03/2017');
--0-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10137','07','7','76','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10138','07','7','77','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10139','07','7','78','09/03/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10140','07','7','79','09/03/2017');
--0-6                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10353','16','7','81','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10354','16','7','82','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10355','16','7','83','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10356','16','7','84','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10357','16','7','85','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('22','10358','16','7','86','10/07/2017');
--3-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10137','06','7','88','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10138','06','7','89','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10139','06','7','90','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10127','06','7','10','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10128','06','7','11','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10129','06','7','12','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('07','10126','06','7','13','10/07/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10228','23','7','15','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10504','23','7','16','10/07/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('11','10505','23','7','17','10/07/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10137','07','7','19','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10141','07','7','20','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('16','10142','07','7','21','10/10/2017');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10506','22','7','23','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10507','22','7','24','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10508','22','7','25','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','10509','22','7','26','10/10/2017');
--4-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10127','11','7','28','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10128','11','7','29','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10129','11','7','30','10/10/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('06','10126','11','7','31','10/10/2017');


                                                                                                                                            
--grupo I                                                                                                                                     
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10368','30','7','35','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10658','30','7','36','09/05/2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10207','52','7','38','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','11098','52','7','39','09/05/2016');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11113','26','7','41','09/05/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','10578','26','7','42','09/05/2016');
--3-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10578','17','7','44','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10579','17','7','45','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10580','17','7','46','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10368','17','7','47','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10369','17','7','48','10/06/2016');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11098','53','7','50','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11099','53','7','51','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11113','53','7','52','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11114','53','7','53','10/06/2016');
--0-6                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10207','10','7','55','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10208','10','7','56','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10209','10','7','57','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10210','10','7','58','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10211','10','7','59','10/06/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10212','10','7','60','10/06/2016');
--3-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11113','30','7','62','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11114','30','7','63','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11115','30','7','64','10/09/2016');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10207','10','7','66','10/09/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10578','52','7','68','10/09/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10579','52','7','69','10/09/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10207','26','7','71','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10208','26','7','72','11/12/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11098','30','7','74','11/12/2016');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11099','30','7','75','11/12/2016');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11114','17','7','77','11/12/2016');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11098','17','7','79','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11099','17','7','80','03/24/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10207','53','7','82','03/24/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10662','26','7','84','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10579','26','7','85','03/24/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10580','26','7','86','03/24/2017');
--1-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10368','53','7','88','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','11114','53','7','89','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','11115','53','7','90','06/11/2017');
--1-4                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10658','52','7','11','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','11098','52','7','12','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','11099','52','7','13','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','11100','52','7','14','06/11/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','11101','52','7','15','06/11/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10579','10','7','17','06/11/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10368','26','7','19','09/02/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11114','52','7','21','09/02/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','11115','52','7','22','09/02/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10207','30','7','24','09/03/2017');
--1-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','11101','10','7','26','09/05/2017');
--0-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','10368','17','7','28','09/05/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10578','53','7','30','09/05/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10579','53','7','31','09/05/2017');
--1-1                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10208','17','7','33','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10368','17','7','34','10/06/2017');
--0-3                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','10578','26','7','36','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','10579','26','7','37','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('52','10580','26','7','38','10/06/2017');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','11114','53','7','40','10/06/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('30','11115','53','7','41','10/06/2017');
--2-0                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10578','30','7','43','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('26','10579','30','7','44','10/09/2017');
--2-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10368','52','7','46','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','10369','52','7','47','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','11101','52','7','46','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('17','11102','52','7','47','10/09/2017');
--0-2                                                                                                                                           
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','10207','10','7','49','10/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('53','10208','10','7','50','10/09/2017');



--	SEGUNDA RONDA  PARTIDOS DE IDA Y VUELTA
                                                                                                                                         
--irlanda- suiza	(0–1	0–0)
-- ida
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('40','11038','48','7','21','11/09/2017');
-- Vuelta
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('48','','40','','','11/13/2017');  


--Croacia- grecia (4–1	0–0)
-- Ida
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10200','23','7','10','11/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10201','23','7','11','11/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10202','23','7','12','11/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10203','23','7','13','11/09/2017');
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('10','10506','23','7','14','11/09/2017');
-- Vuelta
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('23','','10','','','11/13/2017');


--Dinamarca -Irlanda	(0–0	1-5)
--Ida
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('13','','25','','','11/09/2017');
--Vuelta
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10552','13','7','15','11/13/2017');                                                                                                                                      
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10266','13','7','16','11/13/2017');                                                                                                                                      
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10267','13','7','17','11/13/2017');                                                                                                                                      
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10268','13','7','18','11/13/2017');                                                                                                                                      
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10269','13','7','19','11/13/2017');                                                                                                                                      
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('25','10270','13','7','20','11/13/2017');                                                                                                                                      


--Suecia - Italia (1–0	0–0)
--Ida
INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('51','11084','28','7','21','11/09/2017');
-- Vuelta
--INSERT INTO Incidencias (cod_equipo_local, cod_jugador, cod_equipo_visita, tipo_incidencia, minuto, fecha_enfrenta) VALUES ('28','','51','','','11/14/2017');





                                                                                                                                              
