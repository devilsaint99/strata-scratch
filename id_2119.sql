-- Most Lucrative Products

-- Question: You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive). Output their IDs and the total revenue.

WITH JUNE_DATA AS (select * from online_orders
where date_sold between '01-JAN-2022' AND '30-JUN-2022'),
REVENUE_2022_FH AS (SELECT PRODUCT_ID, COST_IN_DOLLARS*UNITS_SOLD AS REVENUE FROM JUNE_DATA)

SELECT PRODUCT_ID, SUM(REVENUE) AS REVENUE
FROM REVENUE_2022_FH
GROUP BY PRODUCT_ID
ORDER BY REVENUE DESC
FETCH FIRST 5 ROWS ONLY


