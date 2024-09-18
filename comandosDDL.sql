CREATE DATABASE Antique;
USE Antique;

CREATE TABLE categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY(id_categoria)
);

CREATE TABLE fotos(
	id_fotos INT NOT NULL AUTO_INCREMENT,
	url VARCHAR(250),
	foto_Frontal VARCHAR(255),
	PRIMARY KEY(id_fotos)	
);

CREATE TABLE epoca(
	id_epoca INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY (id_epoca)
);

CREATE TABLE estado(
	id_estado INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY(id_estado)
);

CREATE TABLE disponibilidad(
	id_disponibilidad INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY(id_disponibilidad)
);

CREATE TABLE stock (
	id_stock INT NOT NULL AUTO_INCREMENT,
	cantidad_maxima int,
	cantidad_minima int,
	cantidad_actual int,
	PRIMARY KEY(id_stock)
);

CREATE TABLE pais (
	id_pais INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY(id_pais)
);

CREATE TABLE region (
	id_region INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	id_pais int,
	PRIMARY KEY(id_region),
	FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE antiguedad (
	id_antiguedad INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	precio DOUBLE,
	descripcion VARCHAR(255),
	id_categoria INT NOT NULL,
	id_fotos INT NOT NULL,
	id_epoca INT NOT NULL,
	id_estado INT NOT NULL,
	id_disponibilidad INT NOT NULL,
	id_stock INT NOT NULL,
	id_region INT NOT NULL,
	PRIMARY KEY(id_antiguedad),
	FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
	FOREIGN KEY (id_fotos) REFERENCES fotos(id_fotos),
	FOREIGN KEY (id_epoca) REFERENCES epoca(id_epoca),
	FOREIGN KEY (id_estado) REFERENCES estado(id_estado),
	FOREIGN KEY (id_disponibilidad) REFERENCES disponibilidad(id_disponibilidad),
	FOREIGN KEY (id_stock) REFERENCES stock(id_stock),
	FOREIGN KEY (id_region) REFERENCES region(id_region)
); 

CREATE TABLE tipo_transaccion(
	id_tipo_transaccion INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(20),
	PRIMARY KEY(id_tipo_transaccion)
);

CREATE TABLE metodo_pago(
	id_metodo_pago INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY(id_metodo_pago)
);

CREATE TABLE pago(
	id_pago INT NOT NULL AUTO_INCREMENT,
	valor DOUBLE,
	id_metodo_pago INT,
	PRIMARY KEY(id_pago),
	FOREIGN KEY(id_metodo_pago) REFERENCES metodo_pago(id_metodo_pago)
);

CREATE TABLE registro(
	id_registro INT NOT NULL AUTO_INCREMENT,
	fecha_entrega DATE,
	id_region INT,
	PRIMARY KEY(id_registro),
	FOREIGN KEY(id_region) REFERENCES region(id_region)
);

CREATE TABLE historial(
	id_historial INT NOT NULL AUTO_INCREMENT,
	precio_antes DOUBLE,
	precio_ahora DOUBLE,
	PRIMARY KEY(id_historial)
);

CREATE TABLE transaccion(
	id_transaccion INT NOT NULL AUTO_INCREMENT,
	id_tipo_transaccion INT,
	id_pago INT,
	id_registro INT,
	id_historial INT,
	PRIMARY KEY(id_transaccion),
	FOREIGN KEY (id_tipo_transaccion) REFERENCES tipo_transaccion(id_tipo_transaccion),
	FOREIGN KEY (id_pago) REFERENCES pago(id_pago),
	FOREIGN KEY (id_registro) REFERENCES registro(id_registro),
	FOREIGN KEY (id_historial) REFERENCES historial(id_historial)
);

CREATE TABLE transaccion_antiguedad (
    id_transaccion INT,
    id_antiguedad INT,
    PRIMARY KEY(id_transaccion, id_antiguedad),
    FOREIGN KEY (id_transaccion) REFERENCES transaccion(id_transaccion),
    FOREIGN KEY (id_antiguedad) REFERENCES antiguedad(id_antiguedad)
);

CREATE TABLE usuario(
	id_usuario INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	PRIMARY KEY(id_usuario)
);

CREATE TABLE rol(
	id_rol INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY(id_rol)
);

CREATE TABLE usuario_rol (
    id_usuario INT,
    id_rol INT,
    PRIMARY KEY (id_usuario, id_rol),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);

CREATE TABLE usuario_antiguedad(
	id_usuario INT,
	id_antiguedad INT,
	PRIMARY KEY(id_usuario,id_antiguedad),
	FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY(id_antiguedad) REFERENCES antiguedad(id_antiguedad)
);

