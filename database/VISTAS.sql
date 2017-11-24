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
	INNER JOIN Ciudades on ciudad_sede = cod_ciudad
	NATURAL JOIN Pais
	INNER JOIN (
	select cod_equipo as cod_equipo_puesto, (cganadores*3+cempatados+cperdedores*0)puesto from (
		Select cod_equipo,(CASE WHEN (cganadores IS NULL) THEN 0 ELSE cganadores END),(CASE WHEN (cempatados IS NULL) THEN 0 ELSE cempatados END)
			,(CASE WHEN (cperdedores IS NULL) THEN 0 ELSE cperdedores END) from equipos FULL OUTER JOIN (
			SELECT COUNT(ganadores) cganadores,ganadores FROM(
			SELECT (CASE WHEN (partidosganadoslocal > partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) ganadores
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)gan
			GROUP BY ganadores
		)ganadores on ganadores = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(empatados) cempatados, empatados FROM(
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_local ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados1
			UNION
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_visita ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados2
			)emapatados
			GROUP BY empatados
			) emp ON empatados = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(perdedores) cperdedores,perdedores FROM(
			SELECT (CASE WHEN (partidosganadoslocal < partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) perdedores 
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)per
			GROUP BY perdedores
		)perdedores on perdedores = cod_equipo
		) puesto

	) puesto ON puesto.cod_equipo_puesto = cod_equipo
UNION
select * from dblink('host=localhost port=5432 dbname=AFC user=postgres password=dans123',
		'select cod_equipo,nomb_equipo,e.cod_confe,nombre_confe,cod_pais,puesto
	from Equipos e
	NATURAL JOIN Confederaciones
	INNER JOIN Ciudades on ciudad_sede = cod_ciudad
	NATURAL JOIN Pais
	INNER JOIN (
	select cod_equipo as cod_equipo_puesto, (cganadores*3+cempatados+cperdedores*0)puesto from (
		Select cod_equipo,(CASE WHEN (cganadores IS NULL) THEN 0 ELSE cganadores END),(CASE WHEN (cempatados IS NULL) THEN 0 ELSE cempatados END)
			,(CASE WHEN (cperdedores IS NULL) THEN 0 ELSE cperdedores END) from equipos FULL OUTER JOIN (
			SELECT COUNT(ganadores) cganadores,ganadores FROM(
			SELECT (CASE WHEN (partidosganadoslocal > partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) ganadores
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)gan
			GROUP BY ganadores
		)ganadores on ganadores = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(empatados) cempatados, empatados FROM(
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_local ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados1
			UNION
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_visita ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados2
			)emapatados
			GROUP BY empatados
			) emp ON empatados = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(perdedores) cperdedores,perdedores FROM(
			SELECT (CASE WHEN (partidosganadoslocal < partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) perdedores 
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)per
			GROUP BY perdedores
		)perdedores on perdedores = cod_equipo
		) puesto

	) puesto ON puesto.cod_equipo_puesto = cod_equipo') 
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
	INNER JOIN Ciudades on ciudad_sede = cod_ciudad
	NATURAL JOIN Pais
	INNER JOIN (
	select cod_equipo as cod_equipo_puesto, (cganadores*3+cempatados+cperdedores*0)puesto from (
		Select cod_equipo,(CASE WHEN (cganadores IS NULL) THEN 0 ELSE cganadores END),(CASE WHEN (cempatados IS NULL) THEN 0 ELSE cempatados END)
			,(CASE WHEN (cperdedores IS NULL) THEN 0 ELSE cperdedores END) from equipos FULL OUTER JOIN (
			SELECT COUNT(ganadores) cganadores,ganadores FROM(
			SELECT (CASE WHEN (partidosganadoslocal > partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) ganadores
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)gan
			GROUP BY ganadores
		)ganadores on ganadores = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(empatados) cempatados, empatados FROM(
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_local ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados1
			UNION
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_visita ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados2
			)emapatados
			GROUP BY empatados
			) emp ON empatados = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(perdedores) cperdedores,perdedores FROM(
			SELECT (CASE WHEN (partidosganadoslocal < partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) perdedores 
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)per
			GROUP BY perdedores
		)perdedores on perdedores = cod_equipo
		) puesto

	) puesto ON puesto.cod_equipo_puesto = cod_equipo') 
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
	INNER JOIN Ciudades on ciudad_sede = cod_ciudad
	NATURAL JOIN Pais
	INNER JOIN (
	select cod_equipo as cod_equipo_puesto, (cganadores*3+cempatados+cperdedores*0)puesto from (
		Select cod_equipo,(CASE WHEN (cganadores IS NULL) THEN 0 ELSE cganadores END),(CASE WHEN (cempatados IS NULL) THEN 0 ELSE cempatados END)
			,(CASE WHEN (cperdedores IS NULL) THEN 0 ELSE cperdedores END) from equipos FULL OUTER JOIN (
			SELECT COUNT(ganadores) cganadores,ganadores FROM(
			SELECT (CASE WHEN (partidosganadoslocal > partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) ganadores
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)gan
			GROUP BY ganadores
		)ganadores on ganadores = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(empatados) cempatados, empatados FROM(
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_local ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados1
			UNION
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_visita ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados2
			)emapatados
			GROUP BY empatados
			) emp ON empatados = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(perdedores) cperdedores,perdedores FROM(
			SELECT (CASE WHEN (partidosganadoslocal < partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) perdedores 
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)per
			GROUP BY perdedores
		)perdedores on perdedores = cod_equipo
		) puesto

	) puesto ON puesto.cod_equipo_puesto = cod_equipo') 
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
	INNER JOIN Ciudades on ciudad_sede = cod_ciudad
	NATURAL JOIN Pais
	INNER JOIN (
	select cod_equipo as cod_equipo_puesto, (cganadores*3+cempatados+cperdedores*0)puesto from (
		Select cod_equipo,(CASE WHEN (cganadores IS NULL) THEN 0 ELSE cganadores END),(CASE WHEN (cempatados IS NULL) THEN 0 ELSE cempatados END)
			,(CASE WHEN (cperdedores IS NULL) THEN 0 ELSE cperdedores END) from equipos FULL OUTER JOIN (
			SELECT COUNT(ganadores) cganadores,ganadores FROM(
			SELECT (CASE WHEN (partidosganadoslocal > partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) ganadores
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)gan
			GROUP BY ganadores
		)ganadores on ganadores = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(empatados) cempatados, empatados FROM(
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_local ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados1
			UNION
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_visita ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados2
			)emapatados
			GROUP BY empatados
			) emp ON empatados = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(perdedores) cperdedores,perdedores FROM(
			SELECT (CASE WHEN (partidosganadoslocal < partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) perdedores 
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)per
			GROUP BY perdedores
		)perdedores on perdedores = cod_equipo
		) puesto

	) puesto ON puesto.cod_equipo_puesto = cod_equipo') 
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
	INNER JOIN Ciudades on ciudad_sede = cod_ciudad
	NATURAL JOIN Pais
	INNER JOIN (
	select cod_equipo as cod_equipo_puesto, (cganadores*3+cempatados+cperdedores*0)puesto from (
		Select cod_equipo,(CASE WHEN (cganadores IS NULL) THEN 0 ELSE cganadores END),(CASE WHEN (cempatados IS NULL) THEN 0 ELSE cempatados END)
			,(CASE WHEN (cperdedores IS NULL) THEN 0 ELSE cperdedores END) from equipos FULL OUTER JOIN (
			SELECT COUNT(ganadores) cganadores,ganadores FROM(
			SELECT (CASE WHEN (partidosganadoslocal > partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) ganadores
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)gan
			GROUP BY ganadores
		)ganadores on ganadores = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(empatados) cempatados, empatados FROM(
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_local ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados1
			UNION
			SELECT (CASE WHEN (partidosganadoslocal = partidosganadosvisita) THEN cod_equipo_visita ELSE NULL END) empatados
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados2
			)emapatados
			GROUP BY empatados
			) emp ON empatados = cod_equipo
		FULL OUTER JOIN (
			SELECT COUNT(perdedores) cperdedores,perdedores FROM(
			SELECT (CASE WHEN (partidosganadoslocal < partidosganadosvisita) THEN cod_equipo_local ELSE cod_equipo_visita END) perdedores 
				FROM (
				select
					(CASE WHEN (partidosganadoslocal IS NULL) THEN 0 ELSE partidosganadoslocal END),
					(CASE WHEN (partidosganadosvisita IS NULL) THEN 0 ELSE partidosganadosvisita END),
					(CASE WHEN (GLocal.cod_equipo_local IS NULL) THEN GVisita.cod_equipo_local ELSE GLocal.cod_equipo_local END),
					(CASE WHEN (GLocal.cod_equipo_visita IS NULL) THEN GVisita.cod_equipo_visita ELSE GLocal.cod_equipo_visita END),
					(CASE WHEN (GLocal.fecha_enfrenta IS NULL) THEN GVisita.fecha_enfrenta ELSE GLocal.fecha_enfrenta END)
					FROM (
					select count(*) as partidosganadoslocal, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
							INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
							 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_local = j.cod_equipo
							group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta 
				) GLocal
				FULL OUTER JOIN (select count(*) as partidosganadosvisita, cod_equipo_local,cod_equipo_visita,fecha_enfrenta from Jugadores j
						INNER JOIN (select count(*),cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador
						 from Incidencias where tipo_incidencia = 7 group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta,cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador and p1.cod_equipo_visita = j.cod_equipo
						group by cod_equipo_local,cod_equipo_visita,fecha_enfrenta) GVisita
				on GVisita.cod_equipo_local = GLocal.cod_equipo_local and GVisita.cod_equipo_visita = GLocal.cod_equipo_visita and GVisita.fecha_enfrenta = GLocal.fecha_enfrenta
			) resultados
			)per
			GROUP BY perdedores
		)perdedores on perdedores = cod_equipo
		) puesto

	) puesto ON puesto.cod_equipo_puesto = cod_equipo') 
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
select (CASE WHEN (rojas IS NULL) THEN 0 ELSE rojas END),(CASE WHEN (amarillas IS NULL) THEN 0 ELSE amarillas END),
	J.cod_jugador,nom_persona,ape_persona,goles_historico,(CASE WHEN (goles IS NULL) THEN 0 ELSE goles END),j.cod_equipo,nomb_equipo from jugadores j
	INNER JOIN personas p ON j.cod_persona = p.cod_persona
	INNER JOIN equipos E ON j.cod_equipo = E.cod_equipo
	FULL OUTER JOIN (
	select count(*) goles,cod_jugador
			 from Incidencias where tipo_incidencia = 7 group by cod_jugador
	) g ON j.cod_jugador = g.cod_jugador
	FULL OUTER JOIN (
	select count(*) rojas,cod_jugador
			 from Incidencias where tipo_incidencia = 3 group by cod_jugador
	) r ON j.cod_jugador = r.cod_jugador
	FULL OUTER JOIN (
	select count(*) amarillas,cod_jugador
			 from Incidencias where tipo_incidencia = 4 group by cod_jugador
	) a ON j.cod_jugador = a.cod_jugador
UNION
select * from dblink('host=localhost port=5432 dbname=AFC user=postgres password=dans123',
		'select (CASE WHEN (rojas IS NULL) THEN 0 ELSE rojas END),(CASE WHEN (amarillas IS NULL) THEN 0 ELSE amarillas END),
			J.cod_jugador,nom_persona,ape_persona,goles_historico,(CASE WHEN (goles IS NULL) THEN 0 ELSE goles END),j.cod_equipo,nomb_equipo from jugadores j
			INNER JOIN personas p ON j.cod_persona = p.cod_persona
			INNER JOIN equipos E ON j.cod_equipo = E.cod_equipo
			FULL OUTER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			FULL OUTER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			FULL OUTER JOIN (
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
		'select (CASE WHEN (rojas IS NULL) THEN 0 ELSE rojas END),(CASE WHEN (amarillas IS NULL) THEN 0 ELSE amarillas END),
			J.cod_jugador,nom_persona,ape_persona,goles_historico,(CASE WHEN (goles IS NULL) THEN 0 ELSE goles END),j.cod_equipo,nomb_equipo from jugadores j
			INNER JOIN personas p ON j.cod_persona = p.cod_persona
			INNER JOIN equipos E ON j.cod_equipo = E.cod_equipo
			FULL OUTER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			FULL OUTER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			FULL OUTER JOIN (
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
		'select (CASE WHEN (rojas IS NULL) THEN 0 ELSE rojas END),(CASE WHEN (amarillas IS NULL) THEN 0 ELSE amarillas END),
			J.cod_jugador,nom_persona,ape_persona,goles_historico,(CASE WHEN (goles IS NULL) THEN 0 ELSE goles END),j.cod_equipo,nomb_equipo from jugadores j
			INNER JOIN personas p ON j.cod_persona = p.cod_persona
			INNER JOIN equipos E ON j.cod_equipo = E.cod_equipo
			FULL OUTER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			FULL OUTER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			FULL OUTER JOIN (
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
		'select (CASE WHEN (rojas IS NULL) THEN 0 ELSE rojas END),(CASE WHEN (amarillas IS NULL) THEN 0 ELSE amarillas END),
			J.cod_jugador,nom_persona,ape_persona,goles_historico,(CASE WHEN (goles IS NULL) THEN 0 ELSE goles END),j.cod_equipo,nomb_equipo from jugadores j
			INNER JOIN personas p ON j.cod_persona = p.cod_persona
			INNER JOIN equipos E ON j.cod_equipo = E.cod_equipo
			FULL OUTER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			FULL OUTER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			FULL OUTER JOIN (
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
		'select (CASE WHEN (rojas IS NULL) THEN 0 ELSE rojas END),(CASE WHEN (amarillas IS NULL) THEN 0 ELSE amarillas END),
			J.cod_jugador,nom_persona,ape_persona,goles_historico,(CASE WHEN (goles IS NULL) THEN 0 ELSE goles END),j.cod_equipo,nomb_equipo from jugadores j
			INNER JOIN personas p ON j.cod_persona = p.cod_persona
			INNER JOIN equipos E ON j.cod_equipo = E.cod_equipo
			FULL OUTER JOIN (
			select count(*) goles,cod_jugador
					 from Incidencias where tipo_incidencia = 7 group by cod_jugador
			) g ON j.cod_jugador = g.cod_jugador
			FULL OUTER JOIN (
			select count(*) rojas,cod_jugador
					 from Incidencias where tipo_incidencia = 3 group by cod_jugador
			) r ON j.cod_jugador = r.cod_jugador
			FULL OUTER JOIN (
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
