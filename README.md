# Healthcare Data Analysis using SQL

## Project Overview

This project analyzes a healthcare dataset containing **55,000+ records** using SQL.
The raw CSV data was transformed into a structured relational database to enable meaningful analysis of hospital performance, patient trends, and healthcare costs.


## Database Design

The dataset was normalized into three main tables:

* **Patients** → demographic details (name, age, gender, blood type)
* **Hospitals** → hospital information
* **Admissions** → transactional data (diagnosis, billing, admission/discharge dates)

Relationships were established using **foreign keys** to simulate a real-world healthcare database system.

## Skills & Tools Used

* SQL (MySQL)
* Data Cleaning & Transformation
* Joins & Aggregations
* Window Functions (`RANK`, `OVER`)
* Data Modeling (Normalization, Foreign Keys)


## Data Processing Workflow

1. Imported raw CSV dataset into MySQL
2. Cleaned and standardized column formats (dates, text fields)
3. Created normalized tables
4. Inserted and joined data across tables
5. Performed analytical queries to extract insights


## Key Analysis & Insights

1. Certain medical conditions (e.g., Diabetes, Hypertension) account for the majority of hospital admissions, indicating major healthcare cost drivers.
2. A small number of hospitals generate disproportionately high revenue, suggesting uneven distribution of patient load.
3. Patients with multiple admissions highlight potential chronic conditions or gaps in post-treatment care.
4. Average length of stay provides insight into hospital efficiency and resource utilization.


## Dataset Details

* Records: ~55,500
* Fields include:

  * Patient demographics
  * Medical conditions
  * Hospital details
  * Admission & discharge dates
  * Billing amounts


## Project Outcome

* Built a fully normalized relational database
* Performed real-world healthcare analytics using SQL
* Extracted actionable insights from large-scale data

## Top Medical Conditions
<img width="670" height="309" alt="top_medical_conditions png " src="https://github.com/user-attachments/assets/8193d482-43a4-4f58-9d50-e72eab206597" />
This query identifies the most common medical conditions among patients. Chronic diseases such as Arthritis, Diabetes, and Hypertension dominate, indicating long-term healthcare demand.

## Revenue by Hospital
This analysis highlights hospital-wise revenue contributions. It helps identify high-performing hospitals and potential revenue concentration patterns.

## Author

Developed as part of a data analytics portfolio project to demonstrate SQL and data modeling skills.
