create table orders
(order_id text primary key,
order_date date,
order_time time);

select * from orders;

copy orders (order_id,order_date,order_time)
from 'C:\Program Files\PostgreSQL\16\orders.csv'
DELIMITER ','
CSV HEADER;

select order_id,order_date,order_time from orders;

create table order_details
(order_details_id text ,
 order_id text ,
pizza_id text,
quantity NUMERIC );

copy order_details ( order_details_id,order_id,pizza_id,quantity)
from 'C:\Program Files\PostgreSQL\16\order_details.csv'
DELIMITER ','
CSV HEADER;

select * from order_details;


CREATE TABLE pizza_types (
    pizza_type_id TEXT ,
    name TEXT,
    category TEXT,
    ingredients TEXT
);

INSERT INTO pizza_types (pizza_type_id, name, category, ingredients)
VALUES
    ('bbq_ckn', 'The Barbecue Chicken Pizza', 'Chicken', 'Barbecued Chicken, Red Peppers, Green Peppers, Tomatoes, Red Onions, Barbecue Sauce'),
    ('cali_ckn', 'The California Chicken Pizza', 'Chicken', 'Chicken, Artichoke, Spinach, Garlic, Jalapeno Peppers, Fontina Cheese, Gouda Cheese'),
    ('ckn_alfredo', 'The Chicken Alfredo Pizza', 'Chicken', 'Chicken, Red Onions, Red Peppers, Mushrooms, Asiago Cheese, Alfredo Sauce'),
    ('ckn_pesto', 'The Chicken Pesto Pizza', 'Chicken', 'Chicken, Tomatoes, Red Peppers, Spinach, Garlic, Pesto Sauce'),
    ('southw_ckn', 'The Southwest Chicken Pizza', 'Chicken', 'Chicken, Tomatoes, Red Peppers, Red Onions, Jalapeno Peppers, Corn, Cilantro, Chipotle Sauce'),
    ('thai_ckn', 'The Thai Chicken Pizza', 'Chicken', 'Chicken, Pineapple, Tomatoes, Red Peppers, Thai Sweet Chilli Sauce'),
    ('big_meat', 'The Big Meat Pizza', 'Classic', 'Bacon, Pepperoni, Italian Sausage, Chorizo Sausage'),
    ('classic_dlx', 'The Classic Deluxe Pizza', 'Classic', 'Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon'),
    ('hawaiian', 'The Hawaiian Pizza', 'Classic', 'Sliced Ham, Pineapple, Mozzarella Cheese'),
    ('ital_cpcllo', 'The Italian Capocollo Pizza', 'Classic', 'Capocollo, Red Peppers, Tomatoes, Goat Cheese, Garlic, Oregano'),
    ('napolitana', 'The Napolitana Pizza', 'Classic', 'Tomatoes, Anchovies, Green Olives, Red Onions, Garlic'),
    ('pep_msh_pep', 'The Pepperoni, Mushroom, and Peppers Pizza', 'Classic', 'Pepperoni, Mushrooms, Green Peppers'),
    ('pepperoni', 'The Pepperoni Pizza', 'Classic', 'Mozzarella Cheese, Pepperoni'),
    ('the_greek', 'The Greek Pizza', 'Classic', 'Kalamata Olives, Feta Cheese, Tomatoes, Garlic, Beef Chuck Roast, Red Onions'),
    ('brie_carre', 'The Brie Carre Pizza', 'Supreme', 'Brie Carre Cheese, Prosciutto, Caramelized Onions, Pears, Thyme, Garlic'),
    ('calabrese', 'The Calabrese Pizza', 'Supreme', '‘Nduja Salami, Pancetta, Tomatoes, Red Onions, Friggitello Peppers, Garlic'),
    ('ital_supr', 'The Italian Supreme Pizza', 'Supreme', 'Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic'),
    ('peppr_salami', 'The Pepper Salami Pizza', 'Supreme', 'Genoa Salami, Capocollo, Pepperoni, Tomatoes, Asiago Cheese, Garlic'),
    ('prsc_argla', 'The Prosciutto and Arugula Pizza', 'Supreme', 'Prosciutto di San Daniele, Arugula, Mozzarella Cheese'),
    ('sicilian', 'The Sicilian Pizza', 'Supreme', 'Coarse Sicilian Salami, Tomatoes, Green Olives, Luganega Sausage, Onions, Garlic'),
    ('soppressata', 'The Soppressata Pizza', 'Supreme', 'Soppressata Salami, Fontina Cheese, Mozzarella Cheese, Mushrooms, Garlic'),
    ('spicy_ital', 'The Spicy Italian Pizza', 'Supreme', 'Capocollo, Tomatoes, Goat Cheese, Artichokes, Peperoncini verdi, Garlic'),
    ('spinach_supr', 'The Spinach Supreme Pizza', 'Supreme', 'Spinach, Red Onions, Pepperoni, Tomatoes, Artichokes, Kalamata Olives, Garlic, Asiago Cheese'),
    ('five_cheese', 'The Five Cheese Pizza', 'Veggie', 'Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic'),
    ('four_cheese', 'The Four Cheese Pizza', 'Veggie', 'Ricotta Cheese, Gorgonzola Piccante Cheese, Mozzarella Cheese, Parmigiano Reggiano Cheese, Garlic'),
    ('green_garden', 'The Green Garden Pizza', 'Veggie', 'Spinach, Mushrooms, Tomatoes, Green Olives, Feta Cheese'),
    ('ital_veggie', 'The Italian Vegetables Pizza', 'Veggie', 'Eggplant, Artichokes, Tomatoes, Zucchini, Red Peppers, Garlic, Pesto Sauce'),
    ('mediterraneo', 'The Mediterranean Pizza', 'Veggie', 'Spinach, Artichokes, Kalamata Olives, Sun-dried Tomatoes, Feta Cheese, Plum Tomatoes, Red Onions'),
    ('mexicana', 'The Mexicana Pizza', 'Veggie', 'Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic'),
    ('spin_pesto', 'The Spinach Pesto Pizza', 'Veggie', 'Spinach, Artichokes, Tomatoes, Sun-dried Tomatoes, Garlic, Pesto Sauce'),
    ('spinach_fet', 'The Spinach and Feta Pizza', 'Veggie', 'Spinach, Mushrooms, Red Onions, Feta Cheese, Garlic'),
    ('veggie_veg', 'The Vegetables + Vegetables Pizza', 'Veggie', 'Mushrooms, Tomatoes, Red Peppers, Green Peppers, Red Onions, Zucchini, Spinach, Garlic');

select * from pizza_types;

CREATE TABLE pizzas (
    pizza_id TEXT ,
    pizza_type_id TEXT,
    size TEXT,
    price NUMERIC
);

copy pizzas ( pizza_id,pizza_type_id,size,price)
from 'C:\Program Files\PostgreSQL\16\pizzas.csv'
DELIMITER ','
CSV HEADER;

select pizza_id,pizza_type_id,size,price from pizzas;

-- Retrieve the total number of orders placed.
select count(order_id) as total_number_of_orders_placed from orders;

-- Calculate the total revenue generated from pizza sales.
select round( sum(order_details.quantity*pizzas.price),2) as total_sales
from order_details join  pizzas 
on pizzas.pizza_id = order_details.pizza_id;

-- Identify the highest-priced pizza.
select pizza_types.name, pizzas.price from pizza_types join
pizzas on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc limit 1;

--Identify the most common pizza size ordered.
SELECT PIZZAS.SIZE,
	COUNT(ORDER_DETAILS.ORDER_DETAILS_ID)AS ORDER_COUNT
FROM PIZZAS
JOIN ORDER_DETAILS ON PIZZAS.PIZZA_ID = ORDER_DETAILS.PIZZA_ID
GROUP BY PIZZAS.SIZE
ORDER BY ORDER_COUNT DESC
LIMIT 1;

--List the top 5 most ordered pizza types along with their quantities.
SELECT PIZZA_TYPES.NAME,
	SUM(ORDER_DETAILS.QUANTITY)AS QUANTITY
FROM PIZZA_TYPES
JOIN PIZZAS ON PIZZA_TYPES.PIZZA_TYPE_ID = PIZZAS.PIZZA_TYPE_ID
JOIN ORDER_DETAILS ON ORDER_DETAILS.PIZZA_ID = PIZZAS.PIZZA_ID
GROUP BY PIZZA_TYPES.NAME
ORDER BY QUANTITY DESC
LIMIT 5;


--Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT PIZZA_TYPES.CATEGORY,
	SUM(ORDER_DETAILS.QUANTITY) AS QUANTITY
FROM PIZZA_TYPES
JOIN PIZZAS ON PIZZA_TYPES.PIZZA_TYPE_ID = PIZZAS.PIZZA_TYPE_ID
JOIN ORDER_DETAILS ON ORDER_DETAILS.PIZZA_ID = PIZZAS.PIZZA_ID
GROUP BY PIZZA_TYPES.CATEGORY
ORDER BY QUANTITY DESC;

--Determine the distribution of orders by hour of the day.
Select extract(hour FROM order_time) AS hour_of_order, count(order_id) AS order_count
FROM orders
GROUP BY extract(hour FROM order_time)order by hour_of_order ;

--Join relevant tables to find the category-wise distribution of pizzas.
select category , count(name) as distribution_of_pizzas
from pizza_types group by category;

--Group the orders by date and calculate the average number of pizzas ordered per day.
select round(avg(quantity),0)as avg_pizza_ordered_per_day
from
(select orders.order_date,sum(order_details.quantity)
 as quantity
from orders join order_details
on orders.order_id=order_details.order_id
group by orders.order_date)as order_quantity;

--Determine the top 3 most ordered pizza types based on revenue.
SELECT PIZZA_TYPES.NAME,
	SUM(ORDER_DETAILS.QUANTITY * PIZZAS.PRICE)AS REVENUE
FROM PIZZA_TYPES
JOIN PIZZAS ON PIZZAS.PIZZA_TYPE_ID = PIZZA_TYPES.PIZZA_TYPE_ID
JOIN ORDER_DETAILS ON ORDER_DETAILS.PIZZA_ID = PIZZAS.PIZZA_ID
GROUP BY PIZZA_TYPES.NAME
ORDER BY REVENUE DESC
LIMIT 3;

--Calculate the percentage contribution of each pizza type to total revenue.
select pizza_types.category,
round(sum(order_details.quantity*pizzas.price)/(select
round(sum(order_details.quantity*pizzas.price),2) as total_sales
from order_details join pizzas on pizzas.pizza_id=order_details.pizza_id)*100,2)as revenue
from pizza_types join pizzas 
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category order by revenue desc;

--Analyze the cumulative revenue generated over time.
select order_date,sum(revenue)over(order by order_date) as cum_revenue
from
(select orders.order_date,
sum(order_details.quantity * pizzas.price) as revenue
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id
join orders on orders.order_id=order_details.order_id
group by orders.order_date) as sales;

--Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select name ,category,revenue  from
(select category,name,revenue,
rank() over(partition by category order by revenue desc) as rn
from
(select pizza_types.category,pizza_types.name,
sum((order_details.quantity)* pizzas.price) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category,pizza_types.name) as  a) as b
where rn<=3;















