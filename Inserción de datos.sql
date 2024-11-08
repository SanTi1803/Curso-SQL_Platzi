use base_practica;

-- Datos para la tabla Productos
insert into productos (id, nombre, descripcion, precio, cantidad_disponible) values (1, 'Smartphone', 'Pantalla OLED 6.5', 747.29, 2);
insert into productos (id, nombre, descripcion, precio, cantidad_disponible) values (2, 'Laptop', 'Procesador Intel i7', 1000.99, 3);
insert into productos (id, nombre, descripcion, precio, cantidad_disponible) values (3, 'Auriculares Inalámbricos', 'Cancelación de ruido hasta 20 horas de batería', 250.46, 2);
insert into productos (id, nombre, descripcion, precio, cantidad_disponible) values (4, 'Computadoras', 'PC GAMER AMD RYZEN 5 4600G A520 16GB 480GB SSD', 643.51, 1);
insert into productos (id, nombre, descripcion, precio, cantidad_disponible) values (5, 'Joystick', 'Joystick Redragon Harrow G808 PRO', 150.88, 3);
insert into productos (id, nombre, descripcion, precio, cantidad_disponible) values (6, 'TeclaDO Electrico', 'Yamaha PSR-EW310 Teclado 76 Teclas Portátil con Soporte y Fuente de Alimentación', 700.14, 5);


-- Datos para la tabla Clientes
insert into clientes (id, nombre, email, telefono) values (1, 'Reuven', 'rvandenhof0@jiathis.com', '(194) 1792036');
insert into clientes (id, nombre, email, telefono) values (2, 'Paco', 'pdymick1@yahoo.com', '(552) 6995151');
insert into clientes (id, nombre, email, telefono) values (3, 'Elbertina', 'estevens2@boston.com', '(662) 1351886');
insert into clientes (id, nombre, email, telefono) values (4, 'Jacquie', 'jlistone3@cam.ac.uk', '(293) 5187221');
insert into clientes (id, nombre, email, telefono) values (5, 'Jacques', 'jizhaky4@home.pl', '(423) 3227764');
insert into clientes (id, nombre, email, telefono) values (6, 'Rutledge', 'rklousner5@sakura.ne.jp', '(265) 7132761');
insert into clientes (id, nombre, email, telefono) values (7, 'Marketa', 'mjohansson6@gnu.org', '(726) 1294087');
insert into clientes (id, nombre, email, telefono) values (8, 'Romona', 'radriaens7@squidoo.com', '(211) 3263731');
insert into clientes (id, nombre, email, telefono) values (9, 'Mill', 'mpaver8@home.pl', '(195) 8585602');
insert into clientes (id, nombre, email, telefono) values (10, 'Rinaldo', 'rgallihawk9@xing.com', '(881) 7158680');


-- Datos para la tabla Colores
insert into colores (id, nombre) values (1, 'Black');
insert into colores (id, nombre) values (2, 'White');
insert into colores (id, nombre) values (3, 'Violet');
insert into colores (id, nombre) values (4, 'Maroon');
insert into colores (id, nombre) values (5, 'Red');
insert into colores (id, nombre) values (6, 'Blue');

-- Datos para la tabla Marcas
insert into marcas (id, nombre) values (1, 'Apple');
insert into marcas (id, nombre) values (2, 'Samsung');
insert into marcas (id, nombre) values (3, 'Apple');
insert into marcas (id, nombre) values (4, 'AMD');
insert into marcas (id, nombre) values (5, 'Redragon');
insert into marcas (id, nombre) values (6, 'Yamaha');


-- Datos para la tabla Inventario
insert into inventario (id, id_producto, id_color, id_marca) values (1, 1, 6, 1);
insert into inventario (id, id_producto, id_color, id_marca) values (2, 2, 2, 2);
insert into inventario (id, id_producto, id_color, id_marca) values (3, 3, 5, 3);
insert into inventario (id, id_producto, id_color, id_marca) values (4, 4, 1, 4);
insert into inventario (id, id_producto, id_color, id_marca) values (5, 5, 5, 5);
insert into inventario (id, id_producto, id_color, id_marca) values (6, 6, 6, 6);

