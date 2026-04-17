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

## Business Questions Answered

- What are the most common medical conditions?
- Which hospitals generate the highest revenue?
- What is the average patient stay duration?
- Which patients have multiple admissions?

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

- Chronic diseases such as Arthritis and Diabetes dominate patient admissions
- Revenue is concentrated among a subset of hospitals
- Some patients have repeated visits, indicating long-term conditions
- Average hospital stay provides insight into healthcare load


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

**Insight:** Chronic diseases dominate patient admissions.

## Revenue by Hospital
<img width="813" height="793" alt="Revenue by Hospital" src="https://github.com/user-attachments/assets/64c25282-48e0-4b50-85dd-15e7145bcb36" />

**Insight:** A small number of hospitals generate the highest revenue.

## Advanced Analysis

- Used window functions to find top conditions per hospital
- Calculated running revenue trends over time
- Identified patients with above-average hospital stay
