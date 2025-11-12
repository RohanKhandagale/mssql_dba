# 🧩 Day 5 – Practicing SQL Joins in Microsoft SQL Server

## 🎯 Objective
To understand and practice different types of SQL Joins — **INNER JOIN**, **LEFT JOIN**, **RIGHT JOIN**, and **FULL JOIN** — using custom tables created in **OurFirstDatabase**.

---

## 🧱 Tables Created

### 1️⃣ Table – `Student`
Created using the SSMS GUI:
- **Columns:**
  - `RollNo` (Primary Key)
  - `StudentName`
  - `City`

### 2️⃣ Table – `Course`
Created using the SSMS GUI:
- **Columns:**
  - `CourseID`
  - `CourseName`
  - `RollNo` (Foreign Key linked to Student table)

📸 Screenshots of both tables are added in the `/images/` folder.

---

## 💡 Learning Focus
- Understanding how **Joins** combine data from multiple tables.
- Identifying matching and non-matching records between related tables.
- Practicing join syntax and observing output differences.