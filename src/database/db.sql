-- to create a new database
CREATE DATABASE IF NOT EXISTS especies_db

-- to use database
use especies_db

-- creating a new table
CREATE TABLE IF NOT EXISTS especies (
  id INT(9) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  especie VARCHAR(50) NOT NULL,
  familia VARCHAR(100) NOT NULL,
  nombre_comun VARCHAR(100) NOT NULL,
  proyecto VARCHAR(15),
  identificador VARCHAR(25) NOT NULL,
  departamento VARCHAR(25) NOT NULL,
  municipio VARCHAR(25) NOT NULL,
  localidad VARCHAR(50) NOT NULL,
  latitud VARCHAR(50) NOT NULL,
  longitud VARCHAR(50) NOT NULL,
  fecha_captura DATE NOT NULL,
  ecorregion VARCHAR(50) NOT NULL
)

CREATE TABLE IF NOT EXISTS autores (
  id INT(9) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL
);

-- to show all tables
show tables;

-- to describe table
describe customer;
