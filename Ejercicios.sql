-- 1) Muestra el nombre, descripcion y precio de todos los productos en la tabla productos.
SELECT nombre, descripcion, precio FROM productos;

-- 2) Obtén el nombre, email y telefono de todos los clientes en la tabla clientes.
SELECT nombre, email, telefono FROM clientes;

-- 3) Selecciona el nombre y precio de los productos cuyo precio sea mayor a 500.
SELECT nombre, precio FROM productos
WHERE precio > 500;

-- 4) Contar la cantidad de productos disponibles por marca.
SELECT m.nombre, count(cantidad_disponible) as "Cantidad por marca"
FROM productos as p
inner join inventario as i on i.id_producto = p.id
inner join marcas as m on m.id = id_marca
group by nombre;

-- 5) Selecciona el nombre del producto, el nombre del color y el nombre de la marca de todos los productos en inventario.
SELECT p.nombre as Producto, c.nombre as Color, m.nombre as Marca
from inventario as i 
inner join productos as p on p.id = i.id_producto
inner join marcas as m on m.id = i.id_marca
inner join colores as c on c.id = i.id_color;

-- 6) Muestra el nombre y cantidad_disponible de los productos cuyo cantidad_disponible es menor a 3.
SELECT nombre, cantidad_disponible 
FROM productos
WHERE cantidad_disponible < 3;

-- 7) Selecciona los nombre y email de los clientes cuyo correo termina en "@yahoo.com"
SELECT nombre, email
FROM clientes
WHERE email like "%@yahoo.com";

-- 8) Muestra el nombre de cada producto y el valor total de su inventario, calculado como precio * cantidad_disponible.
SELECT nombre, precio, cantidad_disponible, precio * cantidad_disponible as "Total Inventario"
from productos;

-- 9) Diseña un procedimiento almacenado llamado SPActualizarPrecioProducto que acepte un id_producto y un nuevo precio, 
--  y actualice el precio del producto en la tabla productos.le.
DELIMITER //
CREATE PROCEDURE SPActualizarPrecioProducto(
 IN p_id_producto int,
 IN p_Nueva_precio INT
)
BEGIN 
	DECLARE estado_actual INT;
	
	SELECT precio INTO estado_actual
    FROM productos
    WHERE id = p_id_Producto;
    
    IF estado_actual <> p_Nueva_precio THEN
		update productos
		SET precio = p_Nueva_precio
		WHERE id = p_id_Producto;
    
		SELECT p_id_Producto AS id_producto, 'Estado del producto actualizado con éxito.' AS Mensaje;
	ELSE
		 SELECT 'El nuevo Precio es igual al Precio actual, no se realizó ninguna actualización.' AS Mensaje;
    END IF;
END //
DELIMITER ;



