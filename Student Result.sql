Create Database Studentsdb

Use Studentsdb

--import file from flat file

Select * from Student_Results

--Delete Column13 because all the rows are null in Column13

Alter table Student_Results
Drop column Column13;

--Top 10 students with highest average marks

Select Top 10 Student_ID, First_Name, Last_Name,
         cast(Math_Score as Decimal(5,2)) 
       + cast(English_Score as Decimal(5,2)) 
       + cast(Science_Score as Decimal(5,2)) 
       / 3.0 AS Avg_Score
From Student_Results
Order by Avg_Score Desc;


--Subject with lowest average
Select 'Math' as Subject , avg(Math_Score) as Avg_Score From Student_Results
Union
Select 'English', avg(English_Score) From Student_Results
Union
Select 'Science', avg(Science_Score) from Student_Results
Order by Avg_Score asc;


--Average score by gender
SELECT Gender,
       AVG(cast(Math_Score as Decimal(5,2)) 
       + cast(English_Score as Decimal(5,2)) 
       + cast(Science_Score as Decimal(5,2)) 
        / 3.0) as Avg_Score
FROM Student_Results
GROUP BY Gender;


--Students scoring above 80 in all subjects
Select Student_ID, First_Name, Last_Name, Math_Score, English_Score, Science_Score
from Student_Results
where Math_Score > 80
  and English_Score > 80
  and Science_Score >80;

  --Students scoring above 95 in all subjects
Select Student_ID, First_Name, Last_Name, Math_Score, English_Score, Science_Score
from Student_Results
where Math_Score > 95
  and English_Score > 95
  and Science_Score > 95;


  --Attendance < 75% vs ≥ 75%
Select case when Attendance_Percentage < 75 then 'Below 75%'
            else '75% or Above' end as Attendance_Group,
           Avg(cast(Math_Score as Decimal(5,2)) 
       + cast(English_Score as Decimal(5,2)) 
       + cast(Science_Score as Decimal(5,2)) 
        / 3.0) as Avg_Score
from Student_Results
Group by Attendance_Percentage;


--Count of students failing in at least one subject (per grade)
Select Grade, Count(*) as Students_Failed
from Student_Results
where Math_Score < 40 OR English_Score < 40 OR Science_Score < 40
group by Grade


--Count of students per state
Select State, Count(*) as Total_Students
from Student_Results
group by State
order by Total_Students desc;


--State-wise gender distribution
Select State, Gender, Count(*) as Student_Count
from Student_Results
group by State, Gender
order by State, Gender;