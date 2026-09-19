# Write your MySQL query statement below
# Write your MySQL query statement below
Select distinct(num) as ConsecutiveNums
from (
    Select num,
    LAG(num,1) over(order by id) as prev1,
    LAG(num,2) over(order by id) as prev2
    from Logs

)t
where num=prev1
and num=prev2