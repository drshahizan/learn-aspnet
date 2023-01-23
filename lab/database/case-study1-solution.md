<a href="https://github.com/drshahizan/learn-aspnet/stargazers"><img src="https://img.shields.io/github/stars/drshahizan/learn-aspnet" alt="Stars Badge"/></a>
<a href="https://github.com/drshahizan/learn-aspnet/network/members"><img src="https://img.shields.io/github/forks/drshahizan/learn-aspnet" alt="Forks Badge"/></a>
<a href="https://github.com/drshahizan/learn-aspnet/pulls"><img src="https://img.shields.io/github/issues-pr/drshahizan/learn-aspnet" alt="Pull Requests Badge"/></a>
<a href="https://github.com/drshahizan/learn-aspnet/issues"><img src="https://img.shields.io/github/issues/drshahizan/learn-aspnet" alt="Issues Badge"/></a>
<a href="https://github.com/drshahizan/learn-aspnet/graphs/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/drshahizan/learn-aspnet?color=2b9348"></a>
![](https://visitor-badge.glitch.me/badge?page_id=drshahizan/learn-aspnet)

Don't forget to hit the :star: if you like this repo.

# Case Study 1: Danny’s Diner (Solution)

## Instructions

Please follow these instructions:

- You must establish a database called CaseStudy1.
- Please then create three tables with the names members, menu, and sales. To obtain the SQL file needed to create the table, please click 💾. Figure 1.1 depicts the outcomes of the application.

<p align="center">
<img src="https://github.com/drshahizan/learn-aspnet/blob/main/lab/database/images/cs1.png"  height="300" /><br>
<b>Figure 1.1: </b>Create table
</p>

- The following step is to input the data into the three newly constructed tables. To download the SQL file for data entry, please click 💾. The information entered matches Figures 2 to 4.

<p align="center">
<img src="https://github.com/drshahizan/learn-aspnet/blob/main/lab/database/images/cs2.png"  height="100" /><br>
<b>Figure 1.2: </b>Members table
</p>

<p align="center">
<img src="https://github.com/drshahizan/learn-aspnet/blob/main/lab/database/images/cs3.png"  height="300" /><br>
<b>Figure 1.3: </b>Sales table
</p>

<p align="center">
<img src="https://github.com/drshahizan/learn-aspnet/blob/main/lab/database/images/cs4.png"  height="100" /><br>
<b>Figure 1.4: </b>Menu table
</p>

Please open the 📁 file to view the entire source code.

<p align="center">
<img src="https://github.com/drshahizan/learn-aspnet/blob/main/lab/database/images/cs5.png"  height="300" /><br>
<b>Figure 1.5: </b>Output
</p>

## Case Study Solutions

1. What is the total amount each customer spent at the restaurant?
We use the SUM and GROUP BY functions to find out total spent for each customer and JOIN function because customer_id is from sales table and price is from menu table.

```
  SELECT s.customer_id, SUM(price) AS total_sales
  FROM dbo.sales AS s
  JOIN dbo.menu AS m
  ON s.product_id = m.product_id
  GROUP BY customer_id; 
```

2. How many days has each customer visited the restaurant?
```
  SELECT customer_id, COUNT(DISTINCT(order_date)) AS visit_count
  FROM dbo.sales
  GROUP BY customer_id;
```

3. What was the first item from the menu purchased by each customer?
```
  WITH ordered_sales_cte AS
  (
   SELECT customer_id, order_date, product_name,
    DENSE_RANK() OVER(PARTITION BY s.customer_id
    ORDER BY s.order_date) AS rank
   FROM dbo.sales AS s
   JOIN dbo.menu AS m
    ON s.product_id = m.product_id
  )
```

Subsequently, we GROUP BY the columns to show rank = 1 only.

```
  SELECT customer_id, product_name
  FROM ordered_sales_cte
  WHERE rank = 1
  GROUP BY customer_id, product_name;
```

4. What is the most purchased item on the menu and how many times was it purchased by all customers?

```
  SELECT TOP 1 (COUNT(s.product_id)) AS most_purchased, product_name
  FROM dbo.sales AS s
  JOIN dbo.menu AS m
   ON s.product_id = m.product_id
  GROUP BY s.product_id, product_name
  ORDER BY most_purchased DESC;SC;
```
5. Which item was the most popular for each customer?
```
  WITH fav_item_cte AS

  (
   SELECT s.customer_id, m.product_name, 
    COUNT(m.product_id) AS order_count,
    DENSE_RANK() OVER(PARTITION BY s.customer_id
    ORDER BY COUNT(s.customer_id) DESC) AS rank
  FROM dbo.menu AS m
  JOIN dbo.sales AS s
   ON m.product_id = s.product_id
  GROUP BY s.customer_id, m.product_name
  )
```

Then, we generate results where rank of product = 1 only as the most popular product for individual customer.

```
  SELECT customer_id, product_name, order_count
  FROM fav_item_cte 
  WHERE rank = 1;
```

6. Which item was purchased first by the customer after they became a member?

In this CTE, we filter order_date to be on or after their join_date and then rank the product_id by the order_date.

```
  WITH member_sales_cte AS 
  (
   SELECT s.customer_id, m.join_date, s.order_date,   s.product_id,
           DENSE_RANK() OVER(PARTITION BY s.customer_id
    ORDER BY s.order_date) AS rank
       FROM sales AS s
   JOIN members AS m
    ON s.customer_id = m.customer_id
   WHERE s.order_date >= m.join_date
  )
```

Next, we filter the table by rank = 1 to show first item purchased by customer.

```
  SELECT s.customer_id, s.order_date, m2.product_name 
  FROM member_sales_cte AS s
  JOIN menu AS m2
   ON s.product_id = m2.product_id
  WHERE rank = 1;
```

7. Which item was purchased just before the customer became a member?
Basically this is a reversed of Question #6. Create a CTE in order

- Create new column rank by partitioning customer_id by DESC order_date to find out the order_date just before the customer became member
- Filter order_date before join_date.

```
  WITH prior_member_purchased_cte AS 
  (
   SELECT s.customer_id, m.join_date, s.order_date, s.product_id,
           DENSE_RANK() OVER(PARTITION BY s.customer_id
           ORDER BY s.order_date DESC) AS rank
   FROM sales AS s
   JOIN members AS m
    ON s.customer_id = m.customer_id
   WHERE s.order_date < m.join_date
  )
```

Then, pull table to show the last item ordered by customer before becoming member.

```
  SELECT s.customer_id, s.order_date, m2.product_name 
  FROM prior_member_purchased_cte AS s
  JOIN menu AS m2
   ON s.product_id = m2.product_id
  WHERE rank = 1;
```

8. What is the total items and amount spent for each member before they became a member?

First, filter order_date before their join_date. Then, COUNT unique product_id and SUM the prices total spent before becoming member.

```
  SELECT s.customer_id, COUNT(DISTINCT s.product_id) AS unique_menu_item, SUM(mm.price) AS total_sales
  FROM sales AS s
  JOIN members AS m
   ON s.customer_id = m.customer_id
  JOIN menu AS mm
   ON s.product_id = mm.product_id
  WHERE s.order_date < m.join_date
  GROUP BY s.customer_id;
```

9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier — how many points would each customer have?

Let’s breakdown the question.

- Each $1 spent = 10 points.
- But, sushi (product_id 1) gets 2x points, meaning each $1 spent = 20 points
- 
So, we use CASE WHEN to create conditional statements
- If product_id = 1, then every $1 price multiply by 20 points
- All other product_id that is not 1, multiply $1 by 10 points
So, you can see the table below with new column, points.

```
  WITH price_points AS
   (
   SELECT *, 
   CASE
    WHEN product_id = 1 THEN price * 20
    ELSE price * 10
    END AS points
   FROM menu
   )
```
 
Using the table above, we SUM the price, match it to the product_id and SUM the total_points.

```
  SELECT s.customer_id, SUM(p.points) AS total_points
  FROM price_points_cte AS p
  JOIN sales AS s
   ON p.product_id = s.product_id
  GROUP BY s.customer_id
```

10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi — how many points do customer A and B have at the end of January?

Again, we breakdown the question.

Find out customer’s validity date (which is 6 days after join_date and inclusive of join_date) and last day of Jan 2021 (‘2021–01–21’).
```
  WITH dates_cte AS 
  (
   SELECT *, 
    DATEADD(DAY, 6, join_date) AS valid_date, 
    EOMONTH('2021-01-31') AS last_date
   FROM members AS m
  )
```

Then, use CASE WHEN to allocate points by dates and product_name.

```
  SELECT d.customer_id, s.order_date, d.join_date, 
   d.valid_date, d.last_date, m.product_name, m.price,
   SUM(CASE
    WHEN m.product_name = 'sushi' THEN 2 * 10 * m.price
    WHEN s.order_date BETWEEN d.join_date AND d.valid_date THEN 2 * 10 * m.price
    ELSE 10 * m.price
    END) AS points
  FROM dates_cte AS d
  JOIN sales AS s
   ON d.customer_id = s.customer_id
  JOIN menu AS m
   ON s.product_id = m.product_id
  WHERE s.order_date < d.last_date
  GROUP BY d.customer_id, s.order_date, d.join_date, d.valid_date, d.last_date, m.product_name, m.price
```
