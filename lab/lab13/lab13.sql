.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) as average_price from products group by category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) from inventory group by item;


CREATE TABLE shopping_list AS
  SELECT b.name, c.store from (select a.name as name, min(a.MSRP / a.rating) as low_cost from products as a group by category) as b,
  lowest_prices as c where b.name = c.item;


CREATE TABLE total_bandwidth AS
  SELECT sum(b.Mbs) from shopping_list as a, stores as b where a.store = b.store;
