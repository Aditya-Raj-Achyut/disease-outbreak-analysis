# 🏥 Disease Outbreak Trends Analysis | End-to-End Data Project

## 📌 Project Overview
This project analyzes **disease outbreak patterns across 10 Indian states (2020–2024)** to uncover seasonal trends, high-risk demographics, and state-wise disease burden. The goal is to provide actionable public health insights through data-driven analysis.

**Dataset:** 5,000 records | 8 Diseases | 10 States | 5 Years (2020–2024)

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| Python (Pandas, NumPy, Matplotlib, Seaborn) | Data Cleaning & EDA |
| SciPy | Hypothesis Testing & Statistical Analysis |
| SQL (PostgreSQL) | KPI Queries & Business Analysis |
| SQLAlchemy | Python–PostgreSQL Integration |
| Power BI | Interactive Dashboard |
| Jupyter Notebook | Analysis Environment |

---

## 📁 Project Structure

```
Disease_Outbreak_Analysis/
│
├── disease-outbreak-analysis.ipynb       # Main Python EDA notebook
├── disease-outbreak-sql-queries.sql      # 10 SQL queries for KPI analysis
├── disease_outbreak_data.csv             # Dataset (5000 records)
├── Disease_Outbreak_Dashboard.pbix       # Power BI dashboard file
├── Dashboard_Preview.png                 # Dashboard screenshot
├── requirement.txt                      # Python dependencies
└── README.md
```

---

## 📊 Project Workflow

1. **Data Generation** — Realistic synthetic dataset created with disease-season correlations for 10 Indian states
2. **Data Cleaning** — Handled data types, added engineered features (severity score, month name)
3. **Python + SQLAlchemy** — Loaded cleaned DataFrame into PostgreSQL using `create_engine`
4. **SQL Analysis** — Wrote 10 business queries in pgAdmin 4 covering KPIs, trends, demographics, and outcomes
5. **Statistical Analysis** — Hypothesis testing (T-test, ANOVA) to validate seasonal and demographic insights
6. **Dashboarding** — Built an interactive Power BI dashboard tracking outbreak KPIs

---

## 🔍 Key Insights

- **Top Diseases:** COVID-19 and Dengue report the highest total case burden across all years
- **Seasonal Peak:** Monsoon season drives the highest outbreak activity, especially for Dengue and Malaria
- **High-Risk States:** Uttar Pradesh and Maharashtra consistently report the most cases due to population density
- **Vulnerable Demographics:** Age group 21–40 is the most affected; elderly (61+) face the highest mortality rates
- **Mortality Leaders:** Tuberculosis and COVID-19 have the highest average mortality rates (~7–8%)
- **Recovery Rate:** ~65% of patients recover fully; only ~5% result in fatalities

---

## 📸 Dashboard Preview

![Dashboard Preview](Dashboard_Preview.png)

> *Open `Disease_Outbreak_Dashboard.pbix` in Power BI Desktop for the full interactive experience*

**Dashboard Includes:**
- 4 KPI Cards — Total Cases, Avg Mortality Rate, Avg Hospitalization Days, Total Records
- Year-wise Case Trend (Line Chart)
- Disease-wise Case Distribution (Donut Chart)
- Mortality Rate by Disease (Bar Chart)
- Seasonal Outbreak Comparison (Bar Chart)
- Monthly Case Pattern (Column Chart)
- Age Group Mortality Analysis (Bar Chart)
- State-wise Case Burden (Bar Chart)
- Patient Outcome Distribution (Pie Chart)

---

## 📈 Statistical Analysis (Hypothesis Testing)

| Test | Question | Result |
|---|---|---|
| T-Test | Monsoon vs Winter case load | Significant difference (p < 0.05) |
| ANOVA | Age group effect on mortality | Significant effect (p < 0.05) |
| T-Test | Male vs Female mortality rate | Tested and validated |

---

## ▶️ How to Run This Project

### 1. Clone the Repository
```bash
git clone https://github.com/Aditya-Raj-Achyut/disease-outbreak-analysis.git
cd disease-outbreak-analysis
```

### 2. Install Python Dependencies
```bash
pip install -r requirements.txt
```

### 3. Launch the Jupyter Notebook
```bash
jupyter notebook Disease_Outbreak_Analysis.ipynb
```

### 4. Set Up PostgreSQL
- Open **pgAdmin 4**
- Create a new database: `disease_outbreak`
- Run the notebook up to Step 5 to load data via SQLAlchemy
- Then open `disease_outbreak_sql_queries.sql` in pgAdmin 4 Query Tool and run queries

### 5. View the Dashboard
Open `Disease_Outbreak_Dashboard.pbix` using **Power BI Desktop** (free download from Microsoft)

---

## 💡 Public Health Recommendations

1. **Pre-Monsoon Preparedness:** Deploy additional medical resources in UP and Maharashtra before monsoon season to handle Dengue and Malaria surge
2. **Targeted Vaccination Drives:** Focus TB and COVID-19 campaigns on the 21–40 age group — highest case burden demographic
3. **Winter Alert System:** Implement early warning systems for Influenza and TB in northern states during winter
4. **Real-Time Surveillance:** Establish disease monitoring dashboards for top 3 affected states
5. **Gender-Specific Programs:** Design awareness campaigns addressing male-skewed disease vulnerability

---

## 📦 Dataset Details

- **Type:** Synthetic dataset with realistic disease-season-state correlations
- **Records:** 5,000 patient/case records
- **Columns:** Case ID, Disease, State, Year, Month, Season, Age Group, Gender, Outcome, Hospitalization Days, Cases Reported, Mortality Rate, Severity Score

---

## 📄 License
This project is licensed under the [MIT License](LICENSE).

---

## 🙋 Author
**Aditya Raj Achyut**
[GitHub Profile](https://github.com/Aditya-Raj-Achyut)
