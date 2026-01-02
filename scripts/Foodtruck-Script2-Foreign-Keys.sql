USE Foodtruck_db;

ALTER TABLE products
ADD CONSTRAINT fk_products_foodtrucks
FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_foodtrucks
FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_orders
FOREIGN KEY (order_id) REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_products
FOREIGN KEY (product_id) REFERENCES products(product_id);

ALTER TABLE locations
ADD CONSTRAINT fk_locations_foodtrucks
FOREIGN KEY (foodtruck_id) REFERENCES foodtrucks(foodtruck_id);

