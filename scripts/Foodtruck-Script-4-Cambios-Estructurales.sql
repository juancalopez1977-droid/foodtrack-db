-- Hacemos cambios estructurales a la tabla

ALTER TABLE orders
ADD comentary NVARCHAR(500);

SELECT TOP 10 * FROM orders;

-- Insertemos algunos comentarios en las ordenes que ya existen

UPDATE orders
SET comentary = 'First-time customer, satisfied with service'
WHERE order_id = 1001;

UPDATE orders
SET comentary = 'Customer requested extra napkins'
WHERE order_id = 1002;

SELECT TOP 5 * FROM orders;
