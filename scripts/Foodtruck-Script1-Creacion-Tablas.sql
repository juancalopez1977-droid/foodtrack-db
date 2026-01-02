CREATE DATABASE Foodtruck_db;

CREATE TABLE foodtrucks (
	foodtruck_id INT PRIMARY KEY IDENTITY(1,1),
	name NVARCHAR(100) NOT NULL UNIQUE,
	cuisine_type NVARCHAR(100) NOT NULL,
	city NVARCHAR(100) NOT NULL 
);

CREATE TABLE products (
	product_id INT PRIMARY KEY IDENTITY(101,1),
	foodtruck_id INT NOT NULL, -- Clave foranea
	name NVARCHAR(100) NOT NULL,
	price DECIMAL(18,2) NOT NULL CHECK (price > 0),
	stock INT CHECK (stock >= 0)  
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY IDENTITY(1001,1),
	foodtruck_id INT NOT NULL, -- Clave foranea
	order_date DATE NOT NULL,
	status NVARCHAR(20) NOT NULL CHECK (status IN ('pendiente', 'entregado')),
	total DECIMAL(18,2) NOT NULL CHECK (total > 0)
);


CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT NOT NULL, -- foreign key
    product_id INT NOT NULL, -- foreign key
    quantity INT NOT NULL CHECK (quantity > 0)
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY IDENTITY(1,1),
    foodtruck_id INT NOT NULL, -- Clave foranea
    location_date DATE NOT NULL,
    zone NVARCHAR(100) NOT NULL
);

