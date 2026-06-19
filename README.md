# Student_Results-Analysis

This project is part of my **30 Days of SQL & Power BI Challenge**. On **Day 17**, I worked with a student dataset to perform various **data cleaning**, **analysis**, and **aggregation tasks** using **SQL Server**.

📁 Project Overview

The goal is to simulate real-world scenarios where SQL is used to analyze educational data, including performance tracking, data quality checks, and demographic analysis.


🛠️ Tools & Technologies

SQL Server Management Studio (SSMS)
Flat file data import**


📊 Key SQL Queries & Insights

✅ 1. Data Setup & Cleanup
- Created `Studentsdb` database
- Imported flat file into `Student_Results` table
- Dropped `Column13` due to all NULLs

🎯 2. Performance Analysis
- Top 10 students by average marks across Math, English, Science
- Subject with the **lowest average score**
- **Average score by gender**

🏅 3. Filtering High Performers
- Students scoring **above 80** in all subjects
- Students scoring **above 95** in all subjects

📉 4. At-Risk Students
- Count of students **failing in at least one subject** (score < 40)
- Grouped by `Grade`

📆 5. Attendance-Based Analysis
- Compared average scores of students with:
  - `< 75%` attendance
  - `>= 75%` attendance

🌍 6. Demographics
- Count of students per state
- State-wise gender distribution



## 📸 Screenshots

> Includes query results for:
> - Top scorers
> - Subject averages
> - Gender-based grouping
> - Attendance categories
> - State-level counts

Screenshots available in the pdf file

💡 Learnings

This hands-on exercise helped me:

- Write practical SQL queries for real-world data
- Use `GROUP BY`, `CASE`, `CAST`, `AVG()`, `UNION`, `JOIN` effectively
- Understand how raw data can be shaped into decision-making insights

---

🔗 Connect with Me

- 💼 LinkedIn - (https://www.linkedin.com/in/monti-raj/)
- 🧑‍💻 Open to feedback, collaboration, or mentorship!

📌 Tags

`#SQL` `#DataAnalytics` `#PowerBI` `#SQLDeveloper` `#EducationData` `#DataCleaning` `#BusinessIntelligence` `#LearningByDoing` `#30DaysOfSQL`
