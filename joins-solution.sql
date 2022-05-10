-- 1. Get all customers and their addresses.
SELECT customers.first_name,customers.last_name, addresses
FROM customers JOIN addresses ON customers.id = customer_id
GROUP BY customers.first_name,customers.last_name, addresses;


-- 2. Get all orders and their line items (orders, quantity and product).

SELECT quantity, product_id,order_id, orders
FROM line_items JOIN orders on order_id = orders.id;

-- 3. Which warehouses have cheetos?
SELECT *
FROM products JOIN warehouse_product ON products.id= product_id
WHERE products.description = 'cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT *
FROM products JOIN warehouse_product ON products.id= product_id
WHERE products.description = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT count(orders.address_id), customers.first_name,customers.last_name
FROM customers JOIN addresses ON customers.id = addresses.customer_id JOIN orders ON address_id = addresses.id 
GROUP BY  customers.first_name,customers.last_name;

-- 6. How many customers do we have?

SELECT count(customers.id)
FROM customers;

-- 7. How many products do we carry?
SELECT count(products.id)
FROM products;


-- 8. What is the total available on-hand quantity of diet pepsi?