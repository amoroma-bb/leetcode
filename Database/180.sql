# Write your MySQL query statement below
SELECT distinct num as ConsecutiveNums
FROM Logs
WHERE (Id+1,num) in (select * from Logs) and (Id+2,num) in (select * from Logs)

--
SELECT DISTINCT l1.Num as ConsecutiveNums
FROM Logs l1,
     Logs l2,
     Logs l3
WHERE l1.Id = l2.Id + 1 and l2.id = l3.Id +1 and l1.Num = l2.Num and l2.Num = l3.Num
