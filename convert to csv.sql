COPY (SELECT * FROM busiest_days_of_the_week)
TO 'C:\temp\Pizza Data\Pizza CSV\busiestdays.csv'
WITH (FORMAT CSV, HEADER);

COPY (SELECT * FROM busiest_hours_of_the_day)
TO 'C:\temp\Pizza Data\Pizza CSV\busiesthours.csv'
WITH (FORMAT CSV, HEADER);

COPY (SELECT * FROM sales_by_revenue)
TO 'C:\temp\Pizza Data\Pizza CSV\salesrevenue.csv'
WITH (FORMAT CSV, HEADER);

COPY (SELECT * FROM top_10_bestsellers)
TO 'C:\temp\Pizza Data\Pizza CSV\top10bestsellers.csv'
WITH (FORMAT CSV, HEADER);

COPY (SELECT * FROM worst_sellers)
TO 'C:\temp\Pizza Data\Pizza CSV\worstsellers.csv'
WITH (FORMAT CSV, HEADER);