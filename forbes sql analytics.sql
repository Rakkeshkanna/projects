show databases;
use forbes;
show tables
#Retrieve all records from the dataset
select * from forbes_billionaires;
#Count the total number of billionaires in the dataset:
select count(*) from forbes_billionaires;
#List the billionaires who are citizens of the United States:
select Name , NetWorth , Residence ,Source from forbes_billionaires where Citizenship = 'United States';
#Find the top 3 billionaires with the highest net worth:
select Name, Networth from forbes_billionaires order by Networth desc limit 3 ;
#Find the worlds 5 th billionaires with the highest net worth:
select name, networth from forbes_billionaires order by networth desc limit 1 offset 4;
#Calculate the average age of billionaires in the dataset:
select avg(age) as avg_age from forbes_billionaires;
#Identify the billionaire(s) with the highest number of children
select name, children from forbes_billionaires where children = (select max(children) from forbes_billionaires);
#List the billionaires who have a self-made status and are married:
select Name,Source from forbes_billionaires where status= "Married" and self_made ="True";
#Calculate the total net worth of billionaires from the United States:
select sum(Networth) as Totalnetworth from forbes_billionaires  where country = "United states";
#Find the average net worth of billionaires based on their educational background (Bachelor's, Master's, Dropout, etc.):
select Education,avg(networth) as averagenetworth from forbes_billionaires group by Education
#Identify the top 3 sources of wealth among billionaires in the dataset:
SELECT source, SUM(Networth) AS Totalnetworth
FROM forbes_billionaires
GROUP BY source
ORDER BY Totalnetworth DESC
LIMIT 3;
#List billionaires who are in a relationship and have a net worth greater than $100 billion:
select Name , Networth , status from forbes_billionaires where Status = "In Relationship" and networth >100;






