# Write your MySQL query statement below
 WITH CTE AS(Select user_id,time_stamp, RANK() over(partition by user_id order by time_stamp desc) rnk from Logins
  WHERE EXTRACT(YEAR from time_stamp)=2020)
 Select user_id, time_stamp as last_stamp from CTE
 where rnk=1
 
