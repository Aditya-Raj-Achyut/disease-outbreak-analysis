-- ============================================================
-- Disease Outbreak Trends Analysis | SQL Queries
-- Database: disease_outbreak | Table: disease_data
-- Tool: pgAdmin 4 (PostgreSQL 17)
-- ============================================================

-- ============================================================
-- Q1. What is the total number of cases reported per disease?
-- ============================================================
SELECT 
    disease,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(mortality_rate)::numeric, 2) AS avg_mortality_rate,
    COUNT(*) AS total_records
FROM disease_data
GROUP BY disease
ORDER BY total_cases DESC;


-- ============================================================
-- Q2. Which season has the highest disease outbreak burden?
-- ============================================================
SELECT 
    season,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(mortality_rate)::numeric, 2) AS avg_mortality,
    COUNT(DISTINCT disease) AS diseases_reported
FROM disease_data
GROUP BY season
ORDER BY total_cases DESC;


-- ============================================================
-- Q3. Which states have the highest disease burden year-wise?
-- ============================================================
SELECT 
    year,
    state,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(mortality_rate)::numeric, 2) AS avg_mortality
FROM disease_data
GROUP BY year, state
ORDER BY year, total_cases DESC;


-- ============================================================
-- Q4. What is the year-wise trend of each disease?
-- ============================================================
SELECT 
    year,
    disease,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(hospitalization_days), 1) AS avg_hosp_days
FROM disease_data
GROUP BY year, disease
ORDER BY year, total_cases DESC;


-- ============================================================
-- Q5. Which age group has the highest mortality rate?
-- ============================================================
SELECT 
    age_group,
    COUNT(*) AS total_cases,
    ROUND(AVG(mortality_rate)::numeric, 2) AS avg_mortality_rate,
    SUM(cases_reported) AS total_reported_cases,
    ROUND(AVG(hospitalization_days)::numeric, 1) AS avg_hosp_days
FROM disease_data
GROUP BY age_group
ORDER BY avg_mortality_rate DESC;


-- ============================================================
-- Q6. Compare male vs female disease burden and mortality
-- ============================================================
SELECT 
    gender,
    disease,
    COUNT(*) AS records,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(mortality_rate)::numeric, 2) AS avg_mortality,
    ROUND(AVG(hospitalization_days)::numeric, 1) AS avg_hosp_days
FROM disease_data
GROUP BY gender, disease
ORDER BY gender, total_cases DESC;


-- ============================================================
-- Q7. Patient outcome distribution per disease
-- ============================================================
SELECT 
    disease,
    outcome,
    COUNT(*) AS count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY disease), 2) AS percentage
FROM disease_data
GROUP BY disease, outcome
ORDER BY disease, percentage DESC;


-- ============================================================
-- Q8. Top 5 most severe disease-state combinations
--     (based on avg severity score)
-- ============================================================
SELECT 
    disease,
    state,
    ROUND(AVG(severity_score)::numeric, 2) AS avg_severity,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(mortality_rate)::numeric, 2) AS avg_mortality
FROM disease_data
GROUP BY disease, state
ORDER BY avg_severity DESC
LIMIT 10;

-- ============================================================
-- Q9. Monthly outbreak pattern — which months are peak?
-- ============================================================
SELECT 
    month,
    month_name,
    SUM(cases_reported) AS total_cases,
    ROUND(AVG(mortality_rate), 2) AS avg_mortality,
    COUNT(DISTINCT disease) AS active_diseases
FROM disease_data
GROUP BY month, month_name
ORDER BY month;



-- ============================================================
-- Q10. KPI Summary Dashboard Query
-- ============================================================
SELECT 
    COUNT(*) AS total_records,
    SUM(cases_reported) AS total_cases_reported,
    ROUND(AVG(mortality_rate)::numeric, 2) AS overall_avg_mortality,
    ROUND(AVG(hospitalization_days)::numeric, 1) AS avg_hospitalization_days,
    COUNT(DISTINCT disease) AS total_diseases_tracked,
    COUNT(DISTINCT state) AS states_covered,
    MIN(year) AS data_from_year,
    MAX(year) AS data_to_year
FROM disease_data;