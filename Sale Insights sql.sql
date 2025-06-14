 
 -- SALES INSIGHGT
 select *
 from sales.customers;
  select *
 from sales.date;
  select *
 from sales.markets;
 select *
 from sales.products;
SELECT 
* FROM sales.transactions;

-- T0TAL RECORD
select count(*)
FROM sales.transactions
;
select count(*)
FROM sales.customers
;

select *
from sales.transactions
where market_code = 'Mark001'
;


select count(*)
from sales.transactions
where market_code = 'Mark001'
;

select *
from sales.transactions
where currency = 'usd'
;


select * 
from sales.transactions
inner join sales.date
	on order_date = date
    where year = 2020
    ;

select count(*)
from sales.transactions
inner join sales.date
	on order_date = date
    where year = 2020;
select * 
from sales.date
;

-- TOTAL REVENUE IN 2O2O

select sum(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
	on order_date = date
    where year = 2020;
    
    -- CHENNAI
   select sum(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
	on order_date = date
    where year = 2020
    AND MARKET_CODE = 'MARK001'
    ; 
    
    select distinct product_code
    from sales.transactions
    WHERE market_code = 'mark001'
    ;