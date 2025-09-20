#  SQL Analytics for TCS Logistics – Karachi Branch  

**Optimizing Courier Operations, Delivery SLAs, and Payment Reconciliation through Data-Driven Insights**

<img width="1109" height="624" alt="Cover Image" src="https://github.com/user-attachments/assets/afb28878-b56f-4b35-8884-4a3e11a0486b" />

---

##  Introduction

TCS Logistics – Karachi Branch is one of Pakistan’s busiest delivery hubs, managing thousands of parcels daily across diverse payment methods, delivery routes, and customer segments.  
In high-volume logistics environments, even small inefficiencies can lead to significant operational costs, SLA breaches, and customer dissatisfaction.

This project uses **SQL-based analytics** to simulate a real-world diagnostic engagement for TCS Karachi.  

By designing a normalized relational database and running targeted SQL queries, I investigated six critical operational areas:

- Delivery performance and SLA compliance
- Return rate patterns by payment method
- Courier workload distribution and efficiency
- Warehouse capacity utilization
- Payment reconciliation status
- Customer complaint triggers and tracking accuracy

The analysis follows a **“What I Found → Therefore I Suggest”** framework, ensuring that each technical insight is paired with a clear, actionable business recommendation.  
This approach bridges the gap between **data engineering** and **executive decision-making**, demonstrating how SQL can be leveraged not just for querying data, but for driving measurable business impact.

--- 

## Objective

The objective of this project is to analyze operational data from **TCS Logistics – Karachi Branch** using SQL to identify performance bottlenecks, quantify business risks, and recommend actionable improvements.  
By simulating a real-world logistics environment with normalized relational data, the project aims to:

- Detect inefficiencies in **delivery timelines**, **return rates**, **courier workload**, **warehouse utilization**, **payment reconciliation**, and **customer experience**.
- Translate raw SQL query outputs into **business-ready insights** for decision-makers.
- Demonstrate advanced SQL techniques — including joins, aggregations, window functions, CTEs, and conditional logic — in solving real operational challenges.
- Provide a **data-driven foundation** for future BI enhancements such as Power BI dashboards, predictive analytics, and geospatial route optimization.

--- 

##  Scope of the Project

This project focuses on applying **SQL-based analytics** to evaluate and improve the operational performance of **TCS Logistics – Karachi Branch**.  
The scope covers the **end-to-end logistics workflow**, from parcel booking to final delivery, with emphasis on identifying inefficiencies and recommending data-driven solutions.

### Inclusions

- **Data Modeling & Preparation**
  
  - Designing a normalized relational database for logistics operations.
  - Structuring synthetic but realistic datasets for analysis.
  - 
- **Operational Performance Analysis**
  
  - Delivery SLA compliance and delay patterns.
  - Return rate analysis by payment method and region.
  - Courier workload distribution and efficiency metrics.
  - Warehouse capacity utilization and surge handling.
  - Payment reconciliation tracking for COD, Bank, and Card transactions.
  - Customer complaint triggers and tracking accuracy.
    
- **SQL Techniques Demonstrated

  - Joins, aggregations, and filtering.
  - Window functions for ranking and performance metrics.
  - Common Table Expressions (CTEs) for modular query design.
  - Conditional logic (`CASE WHEN`) and date/time functions.
- **Business Insight Generation**
  - Translating query results into actionable recommendations.
  - Quantifying potential business impact of proposed changes.

### Exclusions

- Real customer or operational data (synthetic dataset used for demonstration).
- Implementation of operational changes (recommendations only).
- Front-end application or live system integration.

### Deliverables

- **SQL Scripts** for each analysis module.
- **Findings & Recommendations Report** in “What I Found → Therefore I Suggest” format.
- **Repository Structure** with organized scripts, data, and visuals.
- **Future Scope** section outlining potential BI and predictive analytics enhancements.


## 🚩 Business Problems at TCS Logistics – Karachi Branch

Through SQL-driven analysis of synthetic operational data, six critical business problems were identified that directly impact efficiency, cost, and customer satisfaction:

1. **Delivery Delays**
   
   - The branch is failing to meet the 48-hour SLA target.  
   - Average delay: **58 hours** per shipment.  
   - Only **3%** of shipments recorded as on-time in the dataset.  
   - Delays appear systemic, tied to hub cutoffs and linehaul schedules rather than last-mile issues.

3. **High Return Rate**

   - Overall return ratio: **26%** of shipments.  
   - By payment method: Bank **31.25%**, Card **25%**, COD **22.73%**.  
   - Non-COD methods show both higher returns and lower delivery success, indicating payment verification friction or low customer trust.

4. **Courier Load Imbalance**
    
   - Parcel assignments are uneven across couriers.  
   - Some couriers are overloaded, others underutilized.  
   - Return rate: **26%**, Delivered: **52%**, with **22%** unaccounted (likely in-transit or cancelled).  
   - Imbalance reduces efficiency and first-attempt delivery success.

5. **Warehouse Overcapacity**
    
   - Designed capacity: **500 parcels/day**, but reported inflow sometimes exceeds 650.  
   - Dataset extract shows only **2 parcels/day** with zero variance — likely filtered or incomplete.  
   - Lack of surge tracking hides true operational stress.

6. **Payment Reconciliation Issues**
   
   - Pending payments: Bank **25%**, COD **27.27%**, Card **0%** (but no completed transactions recorded for any method).  
   - Indicates settlement delays, missing integration between courier deposits, bank feeds, and reporting systems.  
   - Creates cash-flow strain and reconciliation backlog.

7. **Customer Complaints – Tracking Errors**
   
   - Multiple shipments stuck in “In-Transit” for **4+ days** with no updates.  
   - Duplicate records inflate workload metrics.  
   - Affected shipments involve Bank and Card payments, increasing dispute risk.  
   - Reduces transparency, trust, and customer satisfaction.
