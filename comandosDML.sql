INSERT INTO categoria (nombre) VALUES('rey');

INSERT INTO fotos (url,foto_Frontal) VALUES ('imagen.png','imagen2.png');

INSERT INTO epoca (nombre) VALUES ('Romana');

INSERT INTO estado (nombre) VALUES ('restaurado');

INSERT INTO disponibilidad (nombre) VALUES ('en venta');

INSERT INTO stock (cantidad_maxima,cantidad_minima,cantidad_actual) VALUES (5,3,2);

INSERT INTO pais (nombre) VALUES ('Roma');

INSERT INTO region (nombre,id_pais) VALUES ('Sur',1);

INSERT INTO antiguedad (nombre,precio,descripcion,id_categoria,id_fotos,id_epoca,id_estado,id_disponibilidad,id_stock,id_region) VALUES ('Loba Luperca',8.25,'Amamantoa a Romulo y Nemo',1,1,1,1,1,1,1);

INSERT INTO tipo_transaccion(nombre) VALUES('venta');
INSERT INTO tipo_transaccion(nombre) VALUES('compra');

INSERT INTO metodo_pago(nombre) VALUES('nequi');

INSERT INTO pago(valor,id_metodo_pago) VALUES(85.5,1);

INSERT INTO registro (fecha_entrega,id_region) VALUES('2024-04-15',1);

INSERT INTO historial(precio_antes,precio_ahora) VALUES(5.88,6.99);

INSERT INTO transaccion(id_tipo_transaccion,id_pago,id_registro,id_historial) VALUES (1,1,1,1);

INSERT INTO transaccion_antiguedad(id_transaccion,id_antiguedad) VALUES(1,1);

INSERT INTO usuario(nombre,apellido) VALUES('sara','lozano');

INSERT INTO rol(nombre) VALUES ('cliente');

INSERT INTO usuario_rol(id_usuario,id_rol) VALUES(1,1);

INSERT INTO usuario_antiguedad(id_usuario,id_antiguedad) VALUES(1,1);

INSERT INTO categoria (nombre) VALUES ('reina');
INSERT INTO categoria (nombre) VALUES ('muebles');
INSERT INTO categoria (nombre) VALUES ('dios');

INSERT INTO fotos (url, foto_Frontal) VALUES ('imagen3.png', 'imagen4.png');
INSERT INTO fotos (url, foto_Frontal) VALUES ('imagen5.png', 'imagen6.png');


INSERT INTO epoca (nombre) VALUES ('Medieval');
INSERT INTO epoca (nombre) VALUES ('Renacentista');

INSERT INTO estado (nombre) VALUES ('nuevo');
INSERT INTO estado (nombre) VALUES ('antiguo');

INSERT INTO disponibilidad (nombre) VALUES ('reservado');
INSERT INTO disponibilidad (nombre) VALUES ('no disponible');


INSERT INTO stock (cantidad_maxima, cantidad_minima, cantidad_actual) VALUES (10, 5, 7);
INSERT INTO stock (cantidad_maxima, cantidad_minima, cantidad_actual) VALUES (20, 10, 15);

INSERT INTO pais (nombre) VALUES ('Grecia');
INSERT INTO pais (nombre) VALUES ('Egipto');

INSERT INTO region (nombre, id_pais) VALUES ('Centro', 2);
INSERT INTO region (nombre, id_pais) VALUES ('Norte', 3);

INSERT INTO antiguedad (nombre, precio, descripcion, id_categoria, id_fotos, id_epoca, id_estado, id_disponibilidad, id_stock, id_region) 
VALUES ('Venus de Milo', 12.50, 'Escultura clásica de la diosa Venus', 2, 2, 2, 2, 2, 2, 2);

INSERT INTO antiguedad (nombre, precio, descripcion, id_categoria, id_fotos, id_epoca, id_estado, id_disponibilidad, id_stock, id_region) 
VALUES ('Cabeza de Osiris', 400, 'Cabeza de la estatua de Ramsés II', 3, 3, 3, 1, 1, 2, 3);

INSERT INTO tipo_transaccion (nombre) VALUES ('intercambio');
INSERT INTO tipo_transaccion (nombre) VALUES ('donación');

INSERT INTO metodo_pago (nombre) VALUES ('tarjeta de crédito');
INSERT INTO metodo_pago (nombre) VALUES ('transferencia bancaria');

INSERT INTO pago (valor, id_metodo_pago) VALUES (100.0, 2);
INSERT INTO pago (valor, id_metodo_pago) VALUES (50.5, 3);

INSERT INTO registro (fecha_entrega, id_region) VALUES ('2024-05-10', 2);
INSERT INTO registro (fecha_entrega, id_region) VALUES ('2024-06-15', 3);

INSERT INTO historial (precio_antes, precio_ahora) VALUES (7.99, 9.99);
INSERT INTO historial (precio_antes, precio_ahora) VALUES (12.00, 14.50);

INSERT INTO transaccion (id_tipo_transaccion, id_pago, id_registro, id_historial) VALUES (2, 2, 2, 2);
INSERT INTO transaccion (id_tipo_transaccion, id_pago, id_registro, id_historial) VALUES (2, 3, 3, 2);

INSERT INTO transaccion_antiguedad (id_transaccion, id_antiguedad) VALUES (2, 2);
INSERT INTO transaccion_antiguedad (id_transaccion, id_antiguedad) VALUES (2, 3);

INSERT INTO usuario (nombre, apellido) VALUES ('juan', 'perez');
INSERT INTO usuario (nombre, apellido) VALUES ('maria', 'gomez');

INSERT INTO rol (nombre) VALUES ('administrador');
INSERT INTO rol (nombre) VALUES ('vendedor');

INSERT INTO usuario_rol (id_usuario, id_rol) VALUES (2, 2);
INSERT INTO usuario_rol (id_usuario, id_rol) VALUES (3, 3);

INSERT INTO usuario_antiguedad (id_usuario, id_antiguedad) VALUES (2, 2);
INSERT INTO usuario_antiguedad (id_usuario, id_antiguedad) VALUES (3, 3);
