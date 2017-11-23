--Creación del DBLINK necesario para la conexión con las otras bases de datos
create extension dblink;

/**
* Creación de la vista de los qeuipos de las otras confederaciones
*/
--DROP VIEW VEquiposMundial;
create view VEquiposMundial as
select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
UNION
select * from dblink('host=localhost port=5432 dbname=AFC user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais
			from Equipos e
			NATURAL JOIN Confederaciones
			NATURAL JOIN Ciudades
			NATURAL JOIN Pais') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3))
UNION
select * from dblink('host=localhost port=5432 dbname=CAF
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais
			from Equipos e
			NATURAL JOIN Confederaciones
			NATURAL JOIN Ciudades
			NATURAL JOIN Pais') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3))
UNION
select * from dblink('host=localhost port=5432 dbname=CONCACAF
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais
			from Equipos e
			NATURAL JOIN Confederaciones
			NATURAL JOIN Ciudades
			NATURAL JOIN Pais') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3))
UNION
select * from dblink('host=localhost port=5432 dbname=CONMEBOL
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais
			from Equipos e
			NATURAL JOIN Confederaciones
			NATURAL JOIN Ciudades
			NATURAL JOIN Pais') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3))
UNION
select * from dblink('host=localhost port=5432 dbname=OFC
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais
			from Equipos e
			NATURAL JOIN Confederaciones
			NATURAL JOIN Ciudades
			NATURAL JOIN Pais') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3))
;

/**
*Vista de posiciones por confederacion
*/
--DROP VIEW VPoscionesConfederacion;

create view VPoscionesConfederacion as
select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
	INNER JOIN (
		Select (partidosganados*3+partidosEmpatados+partidosPerdidos*0)AS puesto,pGanados.cod_equipo_local FROM (
		select count(*) as partidosganados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) > (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pGanados
		INNER JOIN (
		select count(*) as partidosEmpatados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) = (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pEmpatados on pGanados.cod_equipo_local = pEmpatados.cod_equipo_local and pGanados.cod_equipo_visita = pEmpatados.cod_equipo_visita and pGanados.fecha_enfrenta = pEmpatados.fecha_enfrenta
		INNER JOIN (
		select count(*) as partidosPerdidos, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) < (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pPerdidos on pGanados.cod_equipo_local = pPerdidos.cod_equipo_local and pGanados.cod_equipo_visita = pPerdidos.cod_equipo_visita and pGanados.fecha_enfrenta = pPerdidos.fecha_enfrenta
	) puesto ON puesto.cod_equipo_local = cod_equipo
UNION
select * from dblink('host=localhost port=5432 dbname=AFC user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
	INNER JOIN (
		Select (partidosganados*3+partidosEmpatados+partidosPerdidos*0)AS puesto,pGanados.cod_equipo_local FROM (
		select count(*) as partidosganados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) > (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pGanados
		INNER JOIN (
		select count(*) as partidosEmpatados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) = (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pEmpatados on pGanados.cod_equipo_local = pEmpatados.cod_equipo_local and pGanados.cod_equipo_visita = pEmpatados.cod_equipo_visita and pGanados.fecha_enfrenta = pEmpatados.fecha_enfrenta
		INNER JOIN (
		select count(*) as partidosPerdidos, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) < (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pPerdidos on pGanados.cod_equipo_local = pPerdidos.cod_equipo_local and pGanados.cod_equipo_visita = pPerdidos.cod_equipo_visita and pGanados.fecha_enfrenta = pPerdidos.fecha_enfrenta
	) puesto ON puesto.cod_equipo_local = cod_equipo') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3),
	  puesto bigint)
UNION
select * from dblink('host=localhost port=5432 dbname=CAF
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
	INNER JOIN (
		Select (partidosganados*3+partidosEmpatados+partidosPerdidos*0)AS puesto,pGanados.cod_equipo_local FROM (
		select count(*) as partidosganados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) > (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pGanados
		INNER JOIN (
		select count(*) as partidosEmpatados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) = (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pEmpatados on pGanados.cod_equipo_local = pEmpatados.cod_equipo_local and pGanados.cod_equipo_visita = pEmpatados.cod_equipo_visita and pGanados.fecha_enfrenta = pEmpatados.fecha_enfrenta
		INNER JOIN (
		select count(*) as partidosPerdidos, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) < (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pPerdidos on pGanados.cod_equipo_local = pPerdidos.cod_equipo_local and pGanados.cod_equipo_visita = pPerdidos.cod_equipo_visita and pGanados.fecha_enfrenta = pPerdidos.fecha_enfrenta
	) puesto ON puesto.cod_equipo_local = cod_equipo') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3),
	  puesto bigint)
UNION
select * from dblink('host=localhost port=5432 dbname=CONCACAF
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
	INNER JOIN (
		Select (partidosganados*3+partidosEmpatados+partidosPerdidos*0)AS puesto,pGanados.cod_equipo_local FROM (
		select count(*) as partidosganados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) > (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pGanados
		INNER JOIN (
		select count(*) as partidosEmpatados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) = (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pEmpatados on pGanados.cod_equipo_local = pEmpatados.cod_equipo_local and pGanados.cod_equipo_visita = pEmpatados.cod_equipo_visita and pGanados.fecha_enfrenta = pEmpatados.fecha_enfrenta
		INNER JOIN (
		select count(*) as partidosPerdidos, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) < (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pPerdidos on pGanados.cod_equipo_local = pPerdidos.cod_equipo_local and pGanados.cod_equipo_visita = pPerdidos.cod_equipo_visita and pGanados.fecha_enfrenta = pPerdidos.fecha_enfrenta
	) puesto ON puesto.cod_equipo_local = cod_equipo') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3),
	  puesto bigint)
UNION
select * from dblink('host=localhost port=5432 dbname=CONMEBOL
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
	INNER JOIN (
		Select (partidosganados*3+partidosEmpatados+partidosPerdidos*0)AS puesto,pGanados.cod_equipo_local FROM (
		select count(*) as partidosganados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) > (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pGanados
		INNER JOIN (
		select count(*) as partidosEmpatados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) = (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pEmpatados on pGanados.cod_equipo_local = pEmpatados.cod_equipo_local and pGanados.cod_equipo_visita = pEmpatados.cod_equipo_visita and pGanados.fecha_enfrenta = pEmpatados.fecha_enfrenta
		INNER JOIN (
		select count(*) as partidosPerdidos, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) < (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pPerdidos on pGanados.cod_equipo_local = pPerdidos.cod_equipo_local and pGanados.cod_equipo_visita = pPerdidos.cod_equipo_visita and pGanados.fecha_enfrenta = pPerdidos.fecha_enfrenta
	) puesto ON puesto.cod_equipo_local = cod_equipo') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3),
	  puesto bigint)
UNION
select * from dblink('host=localhost port=5432 dbname=OFC
 user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	NATURAL JOIN Ciudades
	NATURAL JOIN Pais
	INNER JOIN (
		Select (partidosganados*3+partidosEmpatados+partidosPerdidos*0)AS puesto,pGanados.cod_equipo_local FROM (
		select count(*) as partidosganados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) > (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pGanados
		INNER JOIN (
		select count(*) as partidosEmpatados, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) = (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pEmpatados on pGanados.cod_equipo_local = pEmpatados.cod_equipo_local and pGanados.cod_equipo_visita = pEmpatados.cod_equipo_visita and pGanados.fecha_enfrenta = pEmpatados.fecha_enfrenta
		INNER JOIN (
		select count(*) as partidosPerdidos, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
		inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
		 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
		group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		having count(*) < (
			select count(*) from Jugadores j
			inner join (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p2 ON p2.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
			group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta
		)
		)pPerdidos on pGanados.cod_equipo_local = pPerdidos.cod_equipo_local and pGanados.cod_equipo_visita = pPerdidos.cod_equipo_visita and pGanados.fecha_enfrenta = pPerdidos.fecha_enfrenta
	) puesto ON puesto.cod_equipo_local = cod_equipo') 
	AS t1(cod_equipo varchar(4),
	  nomb_equipo varchar(50),
	  cod_confe smallint,
	  nombre_confe varchar (50),
	  cod_pais varchar(3),
	  puesto bigint)
;

/**
*Vista de información de jugadores
*/
--DROP VIEW VInfo_Jugadores;

create view VInfo_Jugadores as
select rojas,amarillas,j.cod_jugador,nom_persona,ape_persona,goles_historico,goles,j.cod_equipo,nomb_equipo from jugadores j
	Natural JOin personas
	Natural JOin equipos
	INNER JOIN (
	select count(*) goles,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_jugador
	) g ON j.cod_jugador = g.cod_jugador
	INNER JOIN (
	select count(*) rojas,cod_jugador
			 from Incidencias where tipo_incidencia = 3 group by cod_jugador
	) r ON j.cod_jugador = r.cod_jugador
	INNER JOIN (
	select count(*) amarillas,cod_jugador
			 from Incidencias where tipo_incidencia = 4 group by cod_jugador
	) a ON j.cod_jugador = a.cod_jugador
UNION
select * from dblink('host=localhost port=5432 dbname=AFC user=postgres password=dans123',
		'select rojas,amarillas,j.cod_jugador,nom_persona,ape_persona,goles_historico,goles,j.cod_equipo,nomb_equipo from jugadores j
			Natural JOin personas
			Natural JOin equipos
			INNER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			INNER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			INNER JOIN (
			select count(*) amarillas,cod_jugador
					 from Incidencias where tipo_incidencia = 4 group by cod_jugador
			) a ON j.cod_jugador = a.cod_jugador') 
	AS t1(rojas bigint,
	  amarilla bigint,
	  cod_jugador numeric(12,0),
	  nom_persona varchar (50),
	  ape_persona varchar (50),
	  goles_historico smallint,
	  goles bigint,
	  cod_equipo varchar(4),
	  nomb_equipo varchar (50))
UNION
select * from dblink('host=localhost port=5432 dbname=CAF
 user=postgres password=dans123',
		'select rojas,amarillas,j.cod_jugador,nom_persona,ape_persona,goles_historico,goles,j.cod_equipo,nomb_equipo from jugadores j
			Natural JOin personas
			Natural JOin equipos
			INNER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			INNER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			INNER JOIN (
			select count(*) amarillas,cod_jugador
					 from Incidencias where tipo_incidencia = 4 group by cod_jugador
			) a ON j.cod_jugador = a.cod_jugador') 
	AS t1(rojas bigint,
	  amarilla bigint,
	  cod_jugador numeric(12,0),
	  nom_persona varchar (50),
	  ape_persona varchar (50),
	  goles_historico smallint,
	  goles bigint,
	  cod_equipo varchar(4),
	  nomb_equipo varchar (50))
UNION
select * from dblink('host=localhost port=5432 dbname=CONCACAF
 user=postgres password=dans123',
		'select rojas,amarillas,j.cod_jugador,nom_persona,ape_persona,goles_historico,goles,j.cod_equipo,nomb_equipo from jugadores j
			Natural JOin personas
			Natural JOin equipos
			INNER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			INNER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			INNER JOIN (
			select count(*) amarillas,cod_jugador
					 from Incidencias where tipo_incidencia = 4 group by cod_jugador
			) a ON j.cod_jugador = a.cod_jugador') 
	AS t1(rojas bigint,
	  amarilla bigint,
	  cod_jugador numeric(12,0),
	  nom_persona varchar (50),
	  ape_persona varchar (50),
	  goles_historico smallint,
	  goles bigint,
	  cod_equipo varchar(4),
	  nomb_equipo varchar (50))
UNION
select * from dblink('host=localhost port=5432 dbname=CONMEBOL
 user=postgres password=dans123',
		'select rojas,amarillas,j.cod_jugador,nom_persona,ape_persona,goles_historico,goles,j.cod_equipo,nomb_equipo from jugadores j
			Natural JOin personas
			Natural JOin equipos
			INNER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			INNER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			INNER JOIN (
			select count(*) amarillas,cod_jugador
					 from Incidencias where tipo_incidencia = 4 group by cod_jugador
			) a ON j.cod_jugador = a.cod_jugador') 
	AS t1(rojas bigint,
	  amarilla bigint,
	  cod_jugador numeric(12,0),
	  nom_persona varchar (50),
	  ape_persona varchar (50),
	  goles_historico smallint,
	  goles bigint,
	  cod_equipo varchar(4),
	  nomb_equipo varchar (50))
UNION
select * from dblink('host=localhost port=5432 dbname=OFC
 user=postgres password=dans123',
		'select rojas,amarillas,j.cod_jugador,nom_persona,ape_persona,goles_historico,goles,j.cod_equipo,nomb_equipo from jugadores j
			Natural JOin personas
			Natural JOin equipos
			INNER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			INNER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			INNER JOIN (
			select count(*) amarillas,cod_jugador
					 from Incidencias where tipo_incidencia = 4 group by cod_jugador
			) a ON j.cod_jugador = a.cod_jugador') 
	AS t1(rojas bigint,
	  amarilla bigint,
	  cod_jugador numeric(12,0),
	  nom_persona varchar (50),
	  ape_persona varchar (50),
	  goles_historico smallint,
	  goles bigint,
	  cod_equipo varchar(4),
	  nomb_equipo varchar (50))
;
