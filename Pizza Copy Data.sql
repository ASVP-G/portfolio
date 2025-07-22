COPY orders
FROM 'C:\temp\Pizza Data\orders.csv'
WITH (FORMAT CSV, HEADER);

COPY order_details
FROM 'C:\temp\Pizza Data\order_details.csv'
WITH (FORMAT CSV, HEADER);

COPY pizza_types
FROM 'C:\temp\Pizza Data\pizza_types.csv'
WITH (FORMAT CSV, HEADER);

COPY pizzas
FROM 'C:\temp\Pizza Data\pizzas.csv'
WITH (FORMAT CSV, HEADER);
