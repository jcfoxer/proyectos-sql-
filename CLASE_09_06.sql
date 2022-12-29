/*ACTIVAR UNA BASE DE DATOS */
USE master

/*ARCHIVO .MDF  (ARCHIVO FISICO)*/
/*ARCHIVO .LDF  (ARCHIVO TRANSACCIONES) */
/*ARCHIVO .NDF	(ARCHIVO FISICO, PERO OPCIONAL)*/

/*PRIMER EJEMPLO */
CREATE DATABASE COLEGIO

/* SEGUNDO EJEMPLO */
/*ON PRIMARY (CREANDO EL ARCHIVO PRIMARIO O FISICO CON EXTENSION .MDF*/
CREATE DATABASE COLEGIO1
ON PRIMARY( NAME=COLEGIO1_DATA,
			FILENAME='D:\CLASE_BASE\COLEGIO1.MDF',
			SIZE=5MB,
			MAXSIZE=12MB,
			FILEGROWTH=1MB)

/*TERCER EJEMPLO LOG ON INDICA QUE SE ESTA CREANDO EL ARCHIVO DE TRANSACCIONES CON EXTENSION .LDF*/
CREATE DATABASE COLEGIO2
ON PRIMARY( NAME=COLEGIO2_DATA,
			FILENAME='D:\CLASE_BASE\COLEGIO2.MDF',
			SIZE=5MB,
			MAXSIZE=12MB,
			FILEGROWTH=1MB)
			
LOG ON (	NAME=COLEGIO2_LOG,
			FILENAME='D:\CLASE_BASE\COLEGIO2.LDF',
			SIZE=3MB,
			MAXSIZE=8MB,
			FILEGROWTH=3%)
			
/*CUARTO EJEMPLO */
/*CREAR EL ARCHIVO SECUNDARIO O CON EXTENSION .NDF (ARCHIVO FISICO)*/
/*FILEGROUP SE ESTA CREANDO EL ARCHIVO CON EXTENSION .NDF*/

CREATE DATABASE COLEGIO3
ON PRIMARY( NAME=COLEGIO3_DATA,
			FILENAME='D:\CLASE_BASE\COLEGIO3.MDF',
			SIZE=8MB,
			MAXSIZE=15MB,
			FILEGROWTH=2MB),
FILEGROUP DATOS(NAME=COLEGIO3_NDF,
				FILENAME='D:\CLASE_BASE\COLEGIO3.NDF',
				SIZE=5MB,
				MAXSIZE=8MB,
				FILEGROWTH=1MB)
			
LOG ON (	NAME=COLEGIO2_LOG,
			FILENAME='D:\CLASE_BASE\COLEGIO3.LDF',
			SIZE=4MB,
			MAXSIZE=8MB,
			FILEGROWTH=1%)
			
			
CREATE DATABASE COLEGIO3
ON PRIMARY( NAME=COLEGIO3_DATA,
			FILENAME='D:\CLASE_BASE\DATA\COLEGIO3.MDF',
			SIZE=8MB,
			MAXSIZE=15MB,
			FILEGROWTH=2MB)
			
			
USE COLEGIO3

/*ELIMINAR LA BASE DE DATOS / PRIMERO ACTIVAR MASTER*/
USE master
DROP DATABASE COLEGIO3