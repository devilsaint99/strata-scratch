-- Number of Shipments Per Month
--Question: Write a query that will calculate the number of shipments per month. The unique key for one shipment is a combination of shipment_id and sub_id. Output the year_month in format YYYY-MM and the number of shipments in that month.

select to_char(shipment_date,'YYYY-MM') as year_month,count(shipment_id||sub_id) as count from amazon_shipment
group by to_char(shipment_date,'YYYY-MM')
