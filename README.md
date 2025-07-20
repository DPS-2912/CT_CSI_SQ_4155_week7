# 📊 SCD Types (0–6) – Internship Applicants Management

This project simulates handling Slowly Changing Dimensions (SCD) using SQL Server procedures based on the context of **Celbal Technologies’ Internship Program**.

## 🗂 Dataset

We use a single source table: `InternshipApplicants`, representing students applying for internships across India. It contains:
- Basic applicant info
- City of internship
- History fields (Version, IsCurrent, StartDate, EndDate, PreviousCity)

A separate history table is used for SCD Type 4.

---

## 📁 File Structure

| File         | Description |
|--------------|-------------|
| `table.sql`  | Creates base table + inserts dummy data |
| `SCD0.sql`   | Type 0 – No changes allowed |
| `SCD1.sql`   | Type 1 – Overwrite |
| `SCD2.sql`   | Type 2 – New row with versioning |
| `SCD3.sql`   | Type 3 – Track previous value |
| `SCD4.sql`   | Type 4 – Separate history table |
| `SCD6.sql`   | Type 6 – Hybrid of 1+2+3 |
| `sample_run.sql` | Sample calls to all procedures |

---

## 🚀 How to Run

1. Execute `table.sql` to create the schema and insert data.
2. Run each `SCD*.sql` to create the stored procedures.
3. Use `sample_run.sql` to test updates with each SCD strategy.

---

## 👨‍💻 Developed by
**Daraspreet Singh**  
Course Code: CT_CSI_SQ_4155  
Week 7 Assignment – SQL Server  
