select customerID,count(*) as record_count
from customer
group by customerID
having count(*) > 1;

select 
Sum(case when tenure is NULL then 1 else 0 end) as missing_tenure,
Sum(case when MonthlyCharges is Null then 1 else 0 end) as missing_monthly_charges
from customer;

select 
count( case when churn = 'Yes' then 1 end) * 100.0 / count(*) as churn_rate_percentage
from customer;

select 
contract,
count(*) as total_customers,
sum(case when  churn = 'Yes' then 1 else 0 end) as churned_customers,
sum(case when churn = 'Yes' then 1 else 0 end) * 100.0 / count(*) as churn_rate_percentage
from customer
group by Contract;

select 
PaymentMethod,
count(*) as total_customers,
sum(case when churn = 'Yes'  then 1 else 0 end) as churned_customers,
sum(case when churn  = 'Yes' then 1 else 0 end) * 100.0/count(*) as churn_rate_percentage
from customer
group by PaymentMethod;





select  churn,
avg(MonthlyCharges) as avg_montly_charges
from customer
group by churn;

select
tenure,
count(*) as total_customers,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_customers,
sum(case when churn = 'Yes' then 1 else 0 end) * 100.0 / count(*) as churn_rate_percentage
from customer
group by tenure
order by tenure;

select 
PaymentMethod,
count(*) as total_customers,
sum(case when churn = 'Yes'  then 1 else 0 end) as churned_customers,
sum(case when churn  = 'Yes' then 1 else 0 end) * 100.0/count(*) as churn_rate_percentage
from customer
group by PaymentMethod;



