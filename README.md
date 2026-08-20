# Insurance Analytics Project

## 📊 Project Overview

The **Insurance Analytics Project** is a data analytics and business intelligence project focused on analyzing insurance sales, revenue, client engagement, opportunities, and Account Executive performance.

The project integrates data from multiple Excel datasets and uses **Excel, SQL, Power BI, and Tableau** to transform raw business data into meaningful KPIs, interactive dashboards, and actionable business insights.

The objective is to understand revenue performance, compare actual results against targets, evaluate sales activity, monitor the opportunity pipeline, and identify opportunities for business growth.

---

## 👥 Team Members

* **Varad Patil**
* **Rohit Marathe**
* **NM Yajna**
* **Joycee Adhav**
* **Sreenivas Bhosale**
* **Aarya Sangle**

---

## 🎯 Business Objectives

The project focuses on analyzing insurance business performance through the following key areas:

1. Measure **Total Revenue vs Target**
2. Analyze **New vs Renewal Business**
3. Evaluate **Meeting Productivity**
4. Monitor **Opportunity Pipeline Value**
5. Measure **Account Executive Performance**
6. Evaluate **Cross-Sell Achievement**

These six KPIs form the core of the project analysis.

---

## 🗂️ Dataset Overview

The project uses interconnected Excel datasets covering different areas of the insurance business.

### 1. Brokerage & Fees

Contains information related to brokerage and fee-based revenue, which represents important revenue streams.

### 2. Individual Budgets

Contains target benchmarks used for evaluating Account Executive performance against planned targets.

### 3. Invoices

Contains transactional records of billed revenue and invoice activity.

### 4. Meetings

Contains sales activity and client engagement information.

### 5. Opportunities

Contains sales pipeline information and potential future revenue across different opportunity stages.

### Business Coverage

The data covers multiple branches and insurance product groups, including:

* Marine
* Fire
* Employee Benefits

---

# 🛠️ Tools & Technologies

| Tool                | Purpose                                               |
| ------------------- | ----------------------------------------------------- |
| **Microsoft Excel** | Data cleaning, preparation and KPI analysis           |
| **MySQL**           | Data integration, joins, unions and business analysis |
| **Power BI**        | Interactive dashboards and filtering                  |
| **Tableau**         | Trend and geographical analysis                       |
| **SQL**             | Revenue integration and analytical calculations       |

---

# 🔄 Data Analytics Process

The project followed a structured analytics workflow:

```text
Raw Excel Data
      ↓
Data Cleaning
      ↓
Data Transformation
      ↓
SQL Data Integration
      ↓
Business Logic & KPI Calculation
      ↓
Power BI / Tableau / Excel
      ↓
Dashboard & Business Insights
      ↓
Recommendations
```

---

## 🧹 1. Data Cleaning

Excel was used to prepare and standardize the source data.

Key activities included:

* Standardizing date formats
* Handling null values
* Preparing datasets for analysis
* Checking data consistency
* Preparing data for SQL integration

---

## 🗄️ 2. SQL Data Integration

SQL was used to combine and analyze data from multiple sources.

Important SQL techniques used included:

* `JOIN`
* `UNION ALL`
* Aggregations
* Window Functions
* Business-rule calculations

Brokerage and Fees datasets were combined to create a unified revenue view.

---

## 📐 3. Business Logic

Business logic was developed to calculate important performance metrics such as:

* Achieved Revenue
* Target Revenue
* Revenue Gap
* Executive Performance
* Opportunity Pipeline Value
* Meeting Productivity

Window functions and aggregations were used to support performance calculations.

---

# 📊 Key Performance Indicators

## 1. Total Revenue vs Target

Measures the difference between achieved Brokerage/Fees revenue and the assigned budget/target.

**Purpose:**
Identify whether actual revenue is meeting business expectations.

---

## 2. New vs Renewal Business

Analyzes the proportion of newly acquired business compared with retained/renewal business.

**Purpose:**
Understand the balance between customer acquisition and customer retention.

---

## 3. Meeting Productivity

Analyzes the relationship between client meetings and successful conversions.

**Purpose:**
Understand whether sales activity is translating into business results.

---

## 4. Opportunity Pipeline Value

Measures the potential revenue available in different sales pipeline stages, particularly:

* Qualify
* Negotiate
* Propose

**Purpose:**
Monitor future revenue opportunities and identify pipeline bottlenecks.

---

## 5. Executive Performance

Ranks Account Executives based on:

* Invoice count
* Revenue generated
* Meeting activity
* Business performance

---

## 6. Cross-Sell Achievement

Evaluates the effectiveness of selling additional insurance products to existing clients.

**Purpose:**
Identify opportunities to increase revenue from existing customers.

---

# 📈 Dashboard & Visualization

### Power BI

Power BI was used to create interactive reporting with filters based on dimensions such as:

* Branch
* Account Executive

This allows users to interactively analyze business performance.

### Tableau

Tableau was used for:

* Trend analysis
* Geographical performance analysis
* Business performance exploration

### Excel

Excel was used for:

* Pivot-based analysis
* KPI summaries
* Quick business reporting

---

# 🔍 Key Insights

### Revenue Mix

The analysis showed a strong reliance on **Renewal** income, indicating an opportunity to increase revenue from **New Business** and **Cross-Sell** segments.

### Executive Performance

Executives such as **Gilbert** and **Ketan Jain** showed strong performance in terms of invoice counts.

At the same time, some executives had high meeting activity but comparatively lower conversion rates.

### Opportunity Pipeline

The opportunity pipeline contained more than **$5.9M** in the **Qualify** stage, while the **Negotiate** stage contained approximately **$899K**.

This indicates a significant drop-off between qualification and negotiation and highlights the need for stronger closing strategies.

---

# 💡 Business Recommendations

## 1. Improve Conversion

Shift executive training focus from lead generation toward **closing and conversion**.

The large value of opportunities in the Qualify stage represents a significant opportunity to improve revenue realization.

---

## 2. Incentivize Cross-Selling

Introduce specific incentives for successful cross-selling of additional insurance solutions.

Potential focus areas include:

* Construction
* Marine
* Other existing-client product opportunities

---

## 3. Activity-Based Management

Use meeting activity data to establish appropriate weekly meeting expectations for executives who are currently underperforming.

The objective is to connect sales activity with measurable conversion outcomes.

---

# ⚠️ Challenges

### Data Silos

Combining Brokerage and Fees data into one revenue view required SQL `UNION ALL` operations because of differences in their column structures.

### Data Integrity

Account Executive IDs were not always consistent across tables, requiring careful handling during data integration.

### Multi-Tool Integration

One of the major learning outcomes was understanding how to use different tools for different stages of the analytics process:

```text
Excel → Data Preparation
SQL → Data Integration & Analysis
Power BI → Interactive Reporting
Tableau → Trend & Geographical Analysis
```

---

# 📚 Key Learnings

Through this project, we gained practical experience in:

* Data cleaning
* Data transformation
* SQL joins
* SQL `UNION ALL`
* Window functions
* Aggregations
* KPI development
* Business intelligence
* Power BI dashboard development
* Tableau visualization
* Excel Pivot Tables
* Sales funnel analysis
* Revenue analysis
* Executive performance analysis
* Business recommendations

---

# 📊 Project Impact

The project successfully integrated fragmented business data into a unified reporting system.

The transition from manual Excel tracking to automated Power BI/Tableau dashboards was estimated to reduce reporting time by approximately **70%**.

The resulting dashboards provide a consolidated view of business performance and help support planning for the next fiscal year.

---

# 🚀 Future Improvements

Potential future enhancements include:

* Automated data refresh
* Real-time or scheduled reporting
* Advanced sales forecasting
* Customer segmentation
* Executive conversion-rate tracking
* Predictive opportunity scoring
* Automated alerts for pipeline drop-offs
* Advanced Power BI DAX measures
* Machine learning-based revenue forecasting

---

# 📁 Project Structure

```text
insurance-analytics-project/
│
├── data/
│   └── Excel datasets
│
├── sql/
│   └── SQL analysis queries
│
├── powerbi/
│   └── Power BI dashboard
│
├── tableau/
│   └── Tableau workbook
│
├── excel/
│   └── Excel analysis
│
├── screenshots/
│   └── Dashboard screenshots
│
├── presentation/
│   └── Project presentation
│
└── README.md
```

---

# 🏁 Conclusion

The Insurance Analytics Project demonstrates how fragmented insurance business data can be transformed into actionable insights using modern data analytics and business intelligence tools.

By combining **Excel, MySQL, Power BI, and Tableau**, the project provides insights into revenue performance, sales activity, opportunity pipeline health, Account Executive performance, and cross-selling opportunities.

The project highlights the importance of combining technical data skills with business understanding to support better decision-making.

---

## ⭐ Skills Demonstrated

**Data Analytics | SQL | MySQL | Microsoft Excel | Power BI | Tableau | Data Cleaning | Data Integration | KPI Development | Business Intelligence | Dashboard Development | Data Visualization | Sales Analytics | Revenue Analytics**

