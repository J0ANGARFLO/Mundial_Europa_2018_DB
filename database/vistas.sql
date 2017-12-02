-- View: public.jugadores_uefa

-- DROP VIEW public.jugadores_uefa;

CREATE OR REPLACE VIEW public.jugadores_uefa AS 
 SELECT e.cod_equipo,
    e.nomb_equipo,
    e.cod_confe,
    p.nom_persona,
    p.ape_persona,
    gol.goles,
    rojas.rojas,
    amarillas.amarillas,
    jug.part_jugados,
    j.cod_jugador,
    j.cod_pais
   FROM equipos e
     JOIN jugadores j ON e.cod_equipo::text = j.cod_equipo::text
     JOIN personas p ON p.cod_persona = j.cod_persona
     LEFT JOIN ( SELECT count(*) AS goles,
            incidencias.cod_jugador
           FROM incidencias
          WHERE incidencias.tipo_incidencia = 7
          GROUP BY incidencias.cod_jugador) gol ON gol.cod_jugador = j.cod_jugador
     LEFT JOIN ( SELECT count(*) AS rojas,
            incidencias.cod_jugador
           FROM incidencias
          WHERE incidencias.tipo_incidencia = 3
          GROUP BY incidencias.cod_jugador) rojas ON rojas.cod_jugador = j.cod_jugador
     LEFT JOIN ( SELECT count(*) AS amarillas,
            incidencias.cod_jugador
           FROM incidencias
          WHERE incidencias.tipo_incidencia = 4
          GROUP BY incidencias.cod_jugador) amarillas ON amarillas.cod_jugador = j.cod_jugador
     LEFT JOIN ( SELECT count(s.partidos) AS part_jugados,
            s.partidos
           FROM ( SELECT enfrentamiento.cod_equipo_local AS partidos
                   FROM enfrentamiento
                UNION
                 SELECT enfrentamiento.cod_equipo_visita AS partidos
                   FROM enfrentamiento) s
          GROUP BY s.partidos) jug ON jug.partidos::text = e.cod_equipo::text;

ALTER TABLE public.jugadores_uefa
  OWNER TO postgres;

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- View: public.vequiposmundial

-- DROP VIEW public.vequiposmundial;

CREATE OR REPLACE VIEW public.vequiposmundial AS 
 SELECT e.cod_equipo,
    e.nomb_equipo,
    e.cod_confe,
    c.nombre_confe,
    ci.cod_pais
   FROM equipos e
     JOIN confederaciones c ON c.cod_confe = e.cod_confe
     JOIN ciudades ci ON ci.cod_ciudad::text = e.ciudad_sede::text
     JOIN pais p ON p.cod_pais::text = ci.cod_pais::text;


ALTER TABLE public.vequiposmundial
  OWNER TO postgres;

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- View: public.vinfo_equipos

-- DROP VIEW public.vinfo_equipos;

CREATE OR REPLACE VIEW public.vinfo_equipos AS 
 SELECT v.cod_equipo,
    v.nomb_equipo,
    v.puesto,
    v.cod_pais,
    v.nombre_confe,
    gol.goles,
    historicospartidos.cganadores,
    historicospartidos.cempatados,
    historicospartidos.cperdedores,
    historicospartidos.cod_fase,
    historicospartidos.cod_grupo,
        CASE
            WHEN (v.cod_equipo::text IN ( SELECT f1.cod_equipo
               FROM ( SELECT vposcionesconfederacionconfases.cod_equipo
                       FROM vposcionesconfederacionconfases
                      WHERE vposcionesconfederacionconfases.cod_fase = 1
                      ORDER BY vposcionesconfederacionconfases.puesto DESC
                     LIMIT 8) f1
            UNION
            ( SELECT vposcionesconfederacionconfases.cod_equipo
               FROM vposcionesconfederacionconfases
              WHERE vposcionesconfederacionconfases.cod_fase = 2
              ORDER BY vposcionesconfederacionconfases.puesto DESC
             LIMIT 4))) THEN 'SI'::text
            ELSE 'NO'::text
        END AS clasifico
   FROM vposcionesconfederacionconfases v
     JOIN ( SELECT equipos.cod_equipo AS cod_equipo_h,
                CASE
                    WHEN ganadores.cganadores IS NULL THEN 0::bigint
                    ELSE ganadores.cganadores
                END AS cganadores,
                CASE
                    WHEN emp.cempatados IS NULL THEN 0::bigint
                    ELSE emp.cempatados
                END AS cempatados,
                CASE
                    WHEN perdedores.cperdedores IS NULL THEN 0::bigint
                    ELSE perdedores.cperdedores
                END AS cperdedores,
            ganadores.cod_fase,
            ganadores.cod_grupo
           FROM equipos
             FULL JOIN ( SELECT count(*) AS cganadores,
                    gan.ganadores,
                    gan.cod_fase,
                    gan.cod_grupo
                   FROM ( SELECT
                                CASE
                                    WHEN resultados.partidosganadoslocal > resultados.partidosganadosvisita THEN resultados.cod_equipo_local
                                    ELSE resultados.cod_equipo_visita
                                END AS ganadores,
                            resultados.cod_fase,
                            resultados.cod_grupo
                           FROM ( SELECT
CASE
 WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
 ELSE glocal.partidosganadoslocal
END AS partidosganadoslocal,
CASE
 WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
 ELSE gvisita.partidosganadosvisita
END AS partidosganadosvisita,
CASE
 WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
 ELSE glocal.cod_equipo_local
END AS cod_equipo_local,
CASE
 WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
 ELSE glocal.cod_equipo_visita
END AS cod_equipo_visita,
CASE
 WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
 ELSE glocal.fecha_enfrenta
END AS fecha_enfrenta,
CASE
 WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
 ELSE glocal.cod_fase
END AS cod_fase,
CASE
 WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
 ELSE glocal.cod_grupo
END AS cod_grupo
                                   FROM ( SELECT count(*) AS partidosganadoslocal,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
                                     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados) gan
                  GROUP BY gan.ganadores, gan.cod_fase, gan.cod_grupo) ganadores ON ganadores.ganadores::text = equipos.cod_equipo::text
             FULL JOIN ( SELECT count(emapatados.empatados) AS cempatados,
                    emapatados.empatados,
                    emapatados.cod_fase,
                    emapatados.cod_grupo
                   FROM ( SELECT
                                CASE
                                    WHEN resultados1.partidosganadoslocal = resultados1.partidosganadosvisita THEN resultados1.cod_equipo_local
                                    ELSE NULL::character varying
                                END AS empatados,
                            resultados1.cod_fase,
                            resultados1.cod_grupo
                           FROM ( SELECT
CASE
 WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
 ELSE glocal.partidosganadoslocal
END AS partidosganadoslocal,
CASE
 WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
 ELSE gvisita.partidosganadosvisita
END AS partidosganadosvisita,
CASE
 WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
 ELSE glocal.cod_equipo_local
END AS cod_equipo_local,
CASE
 WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
 ELSE glocal.cod_equipo_visita
END AS cod_equipo_visita,
CASE
 WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
 ELSE glocal.fecha_enfrenta
END AS fecha_enfrenta,
CASE
 WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
 ELSE glocal.cod_fase
END AS cod_fase,
CASE
 WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
 ELSE glocal.cod_grupo
END AS cod_grupo
                                   FROM ( SELECT count(*) AS partidosganadoslocal,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
                                     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados1
                        UNION
                         SELECT
                                CASE
                                    WHEN resultados2.partidosganadoslocal = resultados2.partidosganadosvisita THEN resultados2.cod_equipo_visita
                                    ELSE NULL::character varying
                                END AS empatados,
                            resultados2.cod_fase,
                            resultados2.cod_grupo
                           FROM ( SELECT
CASE
 WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
 ELSE glocal.partidosganadoslocal
END AS partidosganadoslocal,
CASE
 WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
 ELSE gvisita.partidosganadosvisita
END AS partidosganadosvisita,
CASE
 WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
 ELSE glocal.cod_equipo_local
END AS cod_equipo_local,
CASE
 WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
 ELSE glocal.cod_equipo_visita
END AS cod_equipo_visita,
CASE
 WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
 ELSE glocal.fecha_enfrenta
END AS fecha_enfrenta,
CASE
 WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
 ELSE glocal.cod_fase
END AS cod_fase,
CASE
 WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
 ELSE glocal.cod_grupo
END AS cod_grupo
                                   FROM ( SELECT count(*) AS partidosganadoslocal,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
                                     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados2) emapatados
                  GROUP BY emapatados.empatados, emapatados.cod_fase, emapatados.cod_grupo) emp ON emp.empatados::text = equipos.cod_equipo::text
             FULL JOIN ( SELECT count(per.perdedores) AS cperdedores,
                    per.perdedores,
                    per.cod_fase,
                    per.cod_grupo
                   FROM ( SELECT
                                CASE
                                    WHEN resultados.partidosganadoslocal < resultados.partidosganadosvisita THEN resultados.cod_equipo_local
                                    ELSE resultados.cod_equipo_visita
                                END AS perdedores,
                            resultados.cod_fase,
                            resultados.cod_grupo
                           FROM ( SELECT
CASE
 WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
 ELSE glocal.partidosganadoslocal
END AS partidosganadoslocal,
CASE
 WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
 ELSE gvisita.partidosganadosvisita
END AS partidosganadosvisita,
CASE
 WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
 ELSE glocal.cod_equipo_local
END AS cod_equipo_local,
CASE
 WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
 ELSE glocal.cod_equipo_visita
END AS cod_equipo_visita,
CASE
 WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
 ELSE glocal.fecha_enfrenta
END AS fecha_enfrenta,
CASE
 WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
 ELSE glocal.cod_fase
END AS cod_fase,
CASE
 WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
 ELSE glocal.cod_grupo
END AS cod_grupo
                                   FROM ( SELECT count(*) AS partidosganadoslocal,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
                                     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
    p1.cod_equipo_local,
    p1.cod_equipo_visita,
    p1.fecha_enfrenta,
    p1.cod_fase,
    p1.cod_grupo
   FROM jugadores j
     JOIN ( SELECT count(*) AS count,
      i.cod_equipo_local,
      i.cod_equipo_visita,
      i.fecha_enfrenta,
      i.cod_jugador,
      enf.cod_fase,
      enf.cod_grupo
     FROM incidencias i
       JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
    WHERE i.tipo_incidencia = 7
    GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
  GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados) per
                  GROUP BY per.perdedores, per.cod_fase, per.cod_grupo) perdedores ON perdedores.perdedores::text = equipos.cod_equipo::text) historicospartidos ON v.cod_equipo::text = historicospartidos.cod_equipo_h::text AND historicospartidos.cod_fase = v.cod_fase AND historicospartidos.cod_grupo = v.cod_grupo
     LEFT JOIN ( SELECT count(*) AS goles,
            j.cod_equipo AS equipo_goles
           FROM incidencias i
             JOIN jugadores j ON j.cod_jugador = i.cod_jugador
          WHERE i.tipo_incidencia = 7
          GROUP BY j.cod_equipo) gol ON gol.equipo_goles::text = v.cod_equipo::text;

ALTER TABLE public.vinfo_equipos
  OWNER TO postgres;

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- View: public.vposcionesconfederacion

-- DROP VIEW public.vposcionesconfederacion;

CREATE OR REPLACE VIEW public.vposcionesconfederacion AS 
 SELECT e.cod_equipo,
    e.nomb_equipo,
    e.cod_confe,
    confederaciones.nombre_confe,
    ciudades.cod_pais,
    puesto.puesto
   FROM equipos e
     JOIN confederaciones USING (cod_confe)
     JOIN ciudades ON e.ciudad_sede::text = ciudades.cod_ciudad::text
     JOIN pais USING (cod_pais)
     JOIN ( SELECT puesto_1.cod_equipo AS cod_equipo_puesto,
            puesto_1.cganadores * 3 + puesto_1.cempatados + puesto_1.cperdedores * 0 AS puesto
           FROM ( SELECT equipos.cod_equipo,
                        CASE
                            WHEN ganadores.cganadores IS NULL THEN 0::bigint
                            ELSE ganadores.cganadores
                        END AS cganadores,
                        CASE
                            WHEN emp.cempatados IS NULL THEN 0::bigint
                            ELSE emp.cempatados
                        END AS cempatados,
                        CASE
                            WHEN perdedores.cperdedores IS NULL THEN 0::bigint
                            ELSE perdedores.cperdedores
                        END AS cperdedores
                   FROM equipos
                     FULL JOIN ( SELECT count(gan.ganadores) AS cganadores,
                            gan.ganadores
                           FROM ( SELECT
CASE
 WHEN resultados.partidosganadoslocal > resultados.partidosganadosvisita THEN resultados.cod_equipo_local
 ELSE resultados.cod_equipo_visita
END AS ganadores
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta) resultados) gan
                          GROUP BY gan.ganadores) ganadores ON ganadores.ganadores::text = equipos.cod_equipo::text
                     FULL JOIN ( SELECT count(emapatados.empatados) AS cempatados,
                            emapatados.empatados
                           FROM ( SELECT
CASE
 WHEN resultados1.partidosganadoslocal = resultados1.partidosganadosvisita THEN resultados1.cod_equipo_local
 ELSE NULL::character varying
END AS empatados
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta) resultados1
                                UNION
                                 SELECT
CASE
 WHEN resultados2.partidosganadoslocal = resultados2.partidosganadosvisita THEN resultados2.cod_equipo_visita
 ELSE NULL::character varying
END AS empatados
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta) resultados2) emapatados
                          GROUP BY emapatados.empatados) emp ON emp.empatados::text = equipos.cod_equipo::text
                     FULL JOIN ( SELECT count(per.perdedores) AS cperdedores,
                            per.perdedores
                           FROM ( SELECT
CASE
 WHEN resultados.partidosganadoslocal < resultados.partidosganadosvisita THEN resultados.cod_equipo_local
 ELSE resultados.cod_equipo_visita
END AS perdedores
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        incidencias.cod_equipo_local,
        incidencias.cod_equipo_visita,
        incidencias.fecha_enfrenta,
        incidencias.cod_jugador
       FROM incidencias
      WHERE incidencias.tipo_incidencia = 7
      GROUP BY incidencias.cod_equipo_local, incidencias.cod_equipo_visita, incidencias.fecha_enfrenta, incidencias.cod_jugador) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta) resultados) per
                          GROUP BY per.perdedores) perdedores ON perdedores.perdedores::text = equipos.cod_equipo::text) puesto_1) puesto ON puesto.cod_equipo_puesto::text = e.cod_equipo::text;

ALTER TABLE public.vposcionesconfederacion
  OWNER TO postgres;


---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- View: public.vposcionesconfederacionconfases

-- DROP VIEW public.vposcionesconfederacionconfases;

CREATE OR REPLACE VIEW public.vposcionesconfederacionconfases AS 
 SELECT e.cod_equipo,
    e.nomb_equipo,
    e.cod_confe,
    confederaciones.nombre_confe,
    ciudades.cod_pais,
    puesto.puesto,
    puesto.cod_fase,
    puesto.cod_grupo
   FROM equipos e
     JOIN confederaciones USING (cod_confe)
     JOIN ciudades ON e.ciudad_sede::text = ciudades.cod_ciudad::text
     JOIN pais USING (cod_pais)
     JOIN ( SELECT puesto_1.cod_equipo AS cod_equipo_puesto,
            puesto_1.cganadores * 3 + puesto_1.cempatados + puesto_1.cperdedores * 0 AS puesto,
            puesto_1.cod_fase,
            puesto_1.cod_grupo
           FROM ( SELECT equipos.cod_equipo,
                        CASE
                            WHEN ganadores.cganadores IS NULL THEN 0::bigint
                            ELSE ganadores.cganadores
                        END AS cganadores,
                        CASE
                            WHEN emp.cempatados IS NULL THEN 0::bigint
                            ELSE emp.cempatados
                        END AS cempatados,
                        CASE
                            WHEN perdedores.cperdedores IS NULL THEN 0::bigint
                            ELSE perdedores.cperdedores
                        END AS cperdedores,
                    ganadores.cod_fase,
                    ganadores.cod_grupo
                   FROM equipos
                     FULL JOIN ( SELECT count(*) AS cganadores,
                            gan.ganadores,
                            gan.cod_fase,
                            gan.cod_grupo
                           FROM ( SELECT
CASE
 WHEN resultados.partidosganadoslocal > resultados.partidosganadosvisita THEN resultados.cod_equipo_local
 ELSE resultados.cod_equipo_visita
END AS ganadores,
                                    resultados.cod_fase,
                                    resultados.cod_grupo
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta,
  CASE
   WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
   ELSE glocal.cod_fase
  END AS cod_fase,
  CASE
   WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
   ELSE glocal.cod_grupo
  END AS cod_grupo
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados) gan
                          GROUP BY gan.ganadores, gan.cod_fase, gan.cod_grupo) ganadores ON ganadores.ganadores::text = equipos.cod_equipo::text
                     FULL JOIN ( SELECT count(emapatados.empatados) AS cempatados,
                            emapatados.empatados,
                            emapatados.cod_fase,
                            emapatados.cod_grupo
                           FROM ( SELECT
CASE
 WHEN resultados1.partidosganadoslocal = resultados1.partidosganadosvisita THEN resultados1.cod_equipo_local
 ELSE NULL::character varying
END AS empatados,
                                    resultados1.cod_fase,
                                    resultados1.cod_grupo
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta,
  CASE
   WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
   ELSE glocal.cod_fase
  END AS cod_fase,
  CASE
   WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
   ELSE glocal.cod_grupo
  END AS cod_grupo
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados1
                                UNION
                                 SELECT
CASE
 WHEN resultados2.partidosganadoslocal = resultados2.partidosganadosvisita THEN resultados2.cod_equipo_visita
 ELSE NULL::character varying
END AS empatados,
                                    resultados2.cod_fase,
                                    resultados2.cod_grupo
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta,
  CASE
   WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
   ELSE glocal.cod_fase
  END AS cod_fase,
  CASE
   WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
   ELSE glocal.cod_grupo
  END AS cod_grupo
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados2) emapatados
                          GROUP BY emapatados.empatados, emapatados.cod_fase, emapatados.cod_grupo) emp ON emp.empatados::text = equipos.cod_equipo::text
                     FULL JOIN ( SELECT count(per.perdedores) AS cperdedores,
                            per.perdedores,
                            per.cod_fase,
                            per.cod_grupo
                           FROM ( SELECT
CASE
 WHEN resultados.partidosganadoslocal < resultados.partidosganadosvisita THEN resultados.cod_equipo_local
 ELSE resultados.cod_equipo_visita
END AS perdedores,
                                    resultados.cod_fase,
                                    resultados.cod_grupo
                                   FROM ( SELECT
  CASE
   WHEN glocal.partidosganadoslocal IS NULL THEN 0::bigint
   ELSE glocal.partidosganadoslocal
  END AS partidosganadoslocal,
  CASE
   WHEN gvisita.partidosganadosvisita IS NULL THEN 0::bigint
   ELSE gvisita.partidosganadosvisita
  END AS partidosganadosvisita,
  CASE
   WHEN glocal.cod_equipo_local IS NULL THEN gvisita.cod_equipo_local
   ELSE glocal.cod_equipo_local
  END AS cod_equipo_local,
  CASE
   WHEN glocal.cod_equipo_visita IS NULL THEN gvisita.cod_equipo_visita
   ELSE glocal.cod_equipo_visita
  END AS cod_equipo_visita,
  CASE
   WHEN glocal.fecha_enfrenta IS NULL THEN gvisita.fecha_enfrenta
   ELSE glocal.fecha_enfrenta
  END AS fecha_enfrenta,
  CASE
   WHEN glocal.cod_fase IS NULL THEN gvisita.cod_fase
   ELSE glocal.cod_fase
  END AS cod_fase,
  CASE
   WHEN glocal.cod_grupo IS NULL THEN gvisita.cod_grupo
   ELSE glocal.cod_grupo
  END AS cod_grupo
   FROM ( SELECT count(*) AS partidosganadoslocal,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_local::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) glocal
     FULL JOIN ( SELECT count(*) AS partidosganadosvisita,
      p1.cod_equipo_local,
      p1.cod_equipo_visita,
      p1.fecha_enfrenta,
      p1.cod_fase,
      p1.cod_grupo
     FROM jugadores j
       JOIN ( SELECT count(*) AS count,
        i.cod_equipo_local,
        i.cod_equipo_visita,
        i.fecha_enfrenta,
        i.cod_jugador,
        enf.cod_fase,
        enf.cod_grupo
       FROM incidencias i
         JOIN enfrentamiento enf ON enf.cod_equipo_local::text = i.cod_equipo_local::text AND enf.cod_equipo_visita::text = i.cod_equipo_visita::text AND enf.fecha_enfrentamiento = i.fecha_enfrenta
      WHERE i.tipo_incidencia = 7
      GROUP BY i.cod_equipo_local, i.cod_equipo_visita, i.fecha_enfrenta, i.cod_jugador, enf.cod_fase, enf.cod_grupo) p1 ON p1.cod_jugador = j.cod_jugador AND p1.cod_equipo_visita::text = j.cod_equipo::text
    GROUP BY p1.cod_equipo_local, p1.cod_equipo_visita, p1.fecha_enfrenta, p1.cod_fase, p1.cod_grupo) gvisita ON gvisita.cod_equipo_local::text = glocal.cod_equipo_local::text AND gvisita.cod_equipo_visita::text = glocal.cod_equipo_visita::text AND gvisita.fecha_enfrenta = glocal.fecha_enfrenta AND gvisita.cod_fase = glocal.cod_fase AND gvisita.cod_grupo = glocal.cod_grupo) resultados) per
                          GROUP BY per.perdedores, per.cod_fase, per.cod_grupo) perdedores ON perdedores.perdedores::text = equipos.cod_equipo::text) puesto_1) puesto ON puesto.cod_equipo_puesto::text = e.cod_equipo::text;

ALTER TABLE public.vposcionesconfederacionconfases
  OWNER TO postgres;
