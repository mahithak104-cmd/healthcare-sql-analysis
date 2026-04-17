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

### 1. Most Common Medical Conditions

Identified top conditions based on frequency of admissions.

### 2. Hospital Revenue Analysis

Calculated total billing amount per hospital to identify high-revenue centers.

### 3. Patient Stay Duration

Measured average length of stay using date functions.

### 4. High-Frequency Patients

Detected patients with multiple admissions (potential readmissions).

### 5. Top Conditions per Hospital

Used window functions to rank medical conditions within each hospital.

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


## Future Improvements

* Build interactive dashboard using Tableau or Power BI
* Add predictive analysis (readmission risk) using Python
* Optimize queries using indexing

## Author

Developed as part of a data analytics portfolio project to demonstrate SQL and data modeling skills.
