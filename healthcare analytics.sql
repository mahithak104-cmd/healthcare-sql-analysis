CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    blood_type VARCHAR(5)
);
CREATE TABLE hospitals (
    hospital_id INT AUTO_INCREMENT PRIMARY KEY,
    hospital_name VARCHAR(100)
);
CREATE TABLE admissions (
    admission_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    hospital_id INT,
    medical_condition VARCHAR(100),
    doctor VARCHAR(100),
    admission_date DATE,
    discharge_date DATE,
    billing_amount DECIMAL(10,2),
    admission_type VARCHAR(50),
    medication VARCHAR(100),
    test_results VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
);
SELECT COUNT(*) FROM healthcare_dataset;
INSERT INTO patients (name, age, gender, blood_type)
SELECT DISTINCT name, age, gender, blood_type
FROM healthcare_dataset;
DESCRIBE healthcare_dataset;
INSERT INTO patients (name, age, gender, blood_type)
SELECT DISTINCT 
    Name,
    Age,
    Gender,
    `Blood Type`
FROM healthcare_dataset;
SELECT COUNT(*) FROM patients;
INSERT INTO hospitals (hospital_name)
SELECT DISTINCT Hospital
FROM healthcare_dataset;

INSERT INTO admissions (
    patient_id,
    hospital_id,
    medical_condition,
    doctor,
    admission_date,
    discharge_date,
    billing_amount,
    admission_type,
    medication,
    test_results
)
SELECT 
    p.patient_id,
    h.hospital_id,
    d.`Medical Condition`,
    d.Doctor,
    STR_TO_DATE(d.`Date of Admission`, '%Y-%m-%d'),
    STR_TO_DATE(d.`Discharge Date`, '%Y-%m-%d'),
    d.`Billing Amount`,
    d.`Admission Type`,
    d.Medication,
    d.`Test Results`
FROM healthcare_dataset d
JOIN patients p 
  ON d.Name = p.name AND d.Age = p.age
JOIN hospitals h 
  ON d.Hospital = h.hospital_name;

SELECT medical_condition, COUNT(*) AS cases
FROM admissions
GROUP BY medical_condition
ORDER BY cases DESC;

SELECT h.hospital_name, SUM(a.billing_amount) AS revenue
FROM admissions a
JOIN hospitals h ON a.hospital_id = h.hospital_id
GROUP BY h.hospital_name
ORDER BY revenue DESC;

SELECT AVG(DATEDIFF(discharge_date, admission_date)) AS avg_stay
FROM admissions;

SELECT *
FROM (
    SELECT 
        h.hospital_name,
        a.medical_condition,
        COUNT(*) AS cases,
        RANK() OVER (PARTITION BY h.hospital_name ORDER BY COUNT(*) DESC) AS rnk
    FROM admissions a
    JOIN hospitals h ON a.hospital_id = h.hospital_id
    GROUP BY h.hospital_name, a.medical_condition
) t
WHERE rnk <= 3;

SELECT 
    admission_date,
    SUM(billing_amount) AS daily_revenue,
    SUM(SUM(billing_amount)) OVER (ORDER BY admission_date) AS running_total
FROM admissions
GROUP BY admission_date;

SELECT *
FROM (
    SELECT 
        patient_id,
        DATEDIFF(discharge_date, admission_date) AS stay_days,
        AVG(DATEDIFF(discharge_date, admission_date)) OVER () AS avg_stay
    FROM admissions
) t
WHERE stay_days > avg_stay;

SELECT doctor, SUM(billing_amount) AS revenue
FROM admissions
GROUP BY doctor
ORDER BY revenue DESC
LIMIT 10;

SELECT patient_id, COUNT(*) AS visits
FROM admissions
GROUP BY patient_id
HAVING visits > 1;