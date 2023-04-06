-- Inicio del Proyecto Ruta del Colibri Cali y creación de extension PostGIS para soporte de datos espaciales

CREATE EXTENSION postgis;

SELECT species, genus, COUNT(DISTINCT id) AS rec_gbif FROM ruta_colibri_cali
GROUP BY species, genus ORDER BY rec_gbif DESC;

