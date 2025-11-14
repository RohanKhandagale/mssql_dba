# 🧩 Day 7 – INSERT Operations, Identity Columns & Backup Techniques

## 🎯 Objective
Today I practiced different types of **INSERT operations**, learned how to **copy data between tables**, understood how **IDENTITY columns** work, and also created a **table backup** before performing major operations.

---

## 🧠 What I Learned
- Creating tables with and without **IDENTITY** columns.
- Inserting **single-row** and **multi-row** records.
- Copying data from one table to another using:
  - `INSERT INTO … SELECT`
- Creating a **table backup** using:
  - `SELECT * INTO backupTable`
- Practiced safe database operations by backing up data before modifying it.

---

## 🗂️ Tables Created Today
- `salesstaff`
- `salesstaffNew`
- `nameOnlyTable`
- `salesstaffNew_bkp` (backup table)

## 🧭 Key Takeaways

- `Use IDENTITY when you want auto-incrementing primary keys`

- `INSERT INTO … SELECT is perfect for copying data between tables`

- `Always take a backup before performing risky operations`

- `Multi-row insert syntax improves productivity`