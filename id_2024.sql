--Unique Users Per Client Per Month

--Question: Write a query that returns the number of unique users per client per month.

select client_id, EXTRACT(month FROM TIME_ID) as month, count(distinct user_id) as users_num from fact_events
group by client_id, EXTRACT(month FROM TIME_ID)
