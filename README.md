#  SQL Analytics for TCS Logistics – Karachi Branch  

**Optimizing Courier Operations, Delivery SLAs, and Payment Reconciliation through Data-Driven Insights**

<img width="1109" height="624" alt="Cover Image" src="https://github.com/user-attachments/assets/afb28878-b56f-4b35-8884-4a3e11a0486b" />

<img width="3404" height="2662" alt="Dasjboard layout" src="https://github.com/user-attachments/assets/7cb91063-5de1-436b-845b-163785431105" />

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


##  Business Problems at TCS Logistics – Karachi Branch

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

## SQL Query Snapshots : 

**Problem 1: Delivery Delays**

<img width="1268" height="696" alt="1" src="https://github.com/user-attachments/assets/3090d96e-e664-456e-b0a4-7039f14a306d" />

**Problem 2: Problem 2: High Return Rate**

<img width="1153" height="649" alt="2" src="https://github.com/user-attachments/assets/32023b13-f2a4-4e40-9ac5-06ba42f9ee81" />

**Problem 3 :  Courier Load Imbalance**

<img width="1151" height="640" alt="3" src="https://github.com/user-attachments/assets/b57f46db-6852-439c-aa32-6002ccb2e97b" />

**Problem 4 :   Warehouse Overcapacity**

<img width="1022" height="575" alt="4" src="https://github.com/user-attachments/assets/48827911-07c3-4d33-bfa2-82e52d7b0014" />

**Problem 5 :   Payment Reconciliation Issues**

<img width="1024" height="561" alt="5" src="https://github.com/user-attachments/assets/23fa8fbd-3d66-4267-bbf4-ac9d221b2758" />

**Problem 6 :   Customer Complaints**

<img width="1026" height="560" alt="6" src="https://github.com/user-attachments/assets/5fe38b67-10ee-46d7-92ef-6f97627c113a" />

##  Findings & Interpretations

Below are the six key operational issues identified through SQL analysis of the Karachi branch dataset, along with my interpretations and recommended actions.

---

### 1 Delivery Delays

**I found this:**  

- Average delivery time is **58 hours**, exceeding the 48‑hour SLA.  
- Only **3%** of shipments recorded as on‑time; **4%** flagged as delayed (metrics don’t sum to 100%, indicating filtered or incomplete data).  
- Delays appear systemic — likely tied to **hub cut‑offs** and **linehaul schedules**, not just last‑mile inefficiencies.

**Therefore I suggest:**  

- Enforce stricter **hub‑in / linehaul‑out cut‑offs**.  
- Implement **milestone tracking** to catch SLA breaches early.  
- Introduce **“at‑risk shipment” alerts** for proactive intervention.  
- Standardize KPI definitions for **On‑Time%** and **Delay%**.

---

### 2 High Return Rate

**I found this:**  

- Return rates by payment method: **Bank 31.25%**, **Card 25%**, **COD 22.73%**.  
- Bank/Card also have lower delivery success than COD.  
- Delivery% + Return% don’t sum to 100% — suggesting other statuses (in‑transit, cancelled) or incomplete data.  
- Pattern indicates **payment verification friction** or **low customer trust** in prepaid methods.

**Therefore I suggest:** 

- Optimize Bank/Card payment flows with **instant confirmation** and **retry logic**.  
- Enforce **address validation** at booking.  
- Introduce **customer confirmations** via SMS/WhatsApp before dispatch.  
- Capture **structured NDR reason codes** to reduce repeat returns.

---

### 3 Courier Load Imbalance

**I found this:**  

- Return rate: **26%**; Delivered: **52%**; 22% unaccounted (likely in‑transit or cancelled).  
- Some couriers are overloaded, others underutilized.  
- High return ratio suggests **poor first‑attempt success** and **weak NDR follow‑up**.

**Therefore I suggest:**

- Implement **dynamic routing** and **workload caps** per courier.  
- Tie incentives to **first‑attempt delivery success**.  
- Penalize poor NDR handling.  
- Conduct **weekly courier performance reviews** by route.

---

### 4 Warehouse Overcapacity

**I found this:**  

- Designed capacity: **500 parcels/day**, but reported inflow sometimes exceeds 650.  
- Dataset extract shows only **2 parcels/day** with zero variance — likely filtered or incomplete.  
- No visible peaks or seasonal surges in the data.

**Therefore I suggest:**  

- Revalidate data extraction to include **hourly spikes** and **seasonal peaks**.  
- Define **granular capacity thresholds** (per hour, per shift).  
- Add **real‑time utilization dashboards**.  
- Maintain a **20% surge buffer** and overflow partnerships.

---

### 5 Payment Reconciliation Issues

**I found this:** 

- Pending payments: **Bank 25%**, **COD 27.27%**, **Card 0%** (but no completed records for any method).  
- Indicates **no settlements recorded** during the observed period.  
- High‑value transactions remain pending, creating **cash‑flow strain**.

**Therefore I suggest:**  

- Enforce **T+1 COD settlement SLAs**.  
- Integrate **bank and payment gateway APIs** for real‑time reconciliation.  
- Assign **method‑level ownership** for pending settlements.  
- Audit **Card transaction mapping** to ensure completeness.

---

### 6 Customer Complaints – Tracking Errors

**I found this:**  

- Six records, only three unique ShipmentIDs, all “In‑Transit” for **4+ days**.  
- Duplicate records inflate workload metrics.  
- Affected shipments involve **Bank and Card payments**, increasing dispute risk.

**Therefore I suggest:**

- Improve **milestone tracking** at every shipment leg.  
- Deduplicate records in reporting dashboards.  
- Sync operational and customer‑facing systems to prevent stale statuses.  
- Prioritize Bank/Card shipments with **call‑ahead verification**.

---

## 🚀 Actionable Insights

The following targeted actions are derived from SQL‑based analysis of six critical operational challenges at the Karachi branch.  
Each insight is directly linked to a measurable business outcome.

---

### 1 Delivery Delays

**Insight:**  

Average delivery time is **58 hours**, exceeding the 48‑hour SLA. Only **3%** of shipments are on‑time, with delays likely tied to hub cut‑offs and linehaul schedules.

**Action Steps:**  

- Deploy a **real‑time SLA Monitoring Dashboard** to flag at‑risk shipments.  
- Reschedule dispatch batches immediately after cut‑off times.  
- Reduce weekend delays by contracting **alternate courier partners**.  
- Standardize SLA KPI definitions for consistent reporting.

---

### 2 High Return Rate

**Insight:**  

Return rates are highest for **Bank (31.25%)** and **Card (25%)** payments, compared to COD (22.73%). Indicates payment verification friction and lower customer trust in prepaid methods.

**Action Steps:**  

- Strengthen **address verification** for all orders.  
- Tighten **payment validation** for Bank/Card transactions.  
- Make **“reason for return”** capture mandatory in courier apps.  
- Introduce **customer confirmation calls/SMS** before dispatch for high‑risk orders.

---

### 3 Courier Load Imbalance

**Insight:**  

26% of parcels are returned, 52% delivered, and 22% unaccounted — suggesting uneven workload distribution and poor NDR follow‑up.

**Action Steps:** 

- Implement a **Courier Load Balancing Algorithm** to evenly distribute parcels.  
- Track courier KPIs and link incentives to **first‑attempt delivery success**.  
- Provide targeted training to underperforming couriers.  
- Penalize poor NDR handling to improve accountability.

---

### 4 Warehouse Overcapacity

**Insight:**  

Warehouse capacity is **500 parcels/day**, but inflow often exceeds 650. Dataset extract shows flat 2 parcels/day — indicating missing surge data.

**Action Steps:**  

- Use **historical shipment trends** for inflow forecasting.  
- Create **dynamic storage zones** within the warehouse.  
- Establish **overflow agreements** with nearby facilities.  
- Add **hourly capacity monitoring** to detect surges early.

---

### 5 Payment Reconciliation Issues

**Insight:**  

25% of Bank and 27.27% of COD payments remain pending; no completed settlements recorded — creating cash‑flow strain.

**Action Steps:**  

- Build a **Pending Payment Tracker** with daily auto‑reconciliation.  
- Link courier payouts to **confirmed delivery status**.  
- Integrate **bank and payment gateway APIs** for real‑time updates.  
- Audit Card transaction mapping to ensure completeness.

---

### 6 Customer Complaints – Tracking Errors

**Insight:**  

Multiple shipments remain “In‑Transit” for **4+ days** with no updates; duplicate records inflate workload metrics.

**Action Steps:**  

- Improve **milestone tracking** across all shipment legs.  
- Deduplicate shipment records in dashboards.  
- Launch a **real‑time customer tracking portal**.  
- Auto‑escalate shipments stuck “In‑Transit” beyond 3 days.

---

##  Expected Impact

- **On‑Time Delivery:** +20% improvement  
- **Return Rate:** Reduced from 26% to <15%  
- **Courier Efficiency:** >85% first‑attempt success  
- **Pending Payments:** Reduced to <5%  
- **Customer Complaints:** 50%+ reduction


##  Conclusion

This project analyzed the operational performance of the **TCS Logistics – Karachi Branch** using SQL‑driven analytics.  

By breaking down six critical business problems — **delivery delays**, **high return rates**, **courier load imbalance**, **warehouse overcapacity**, **payment reconciliation issues**, and **customer complaints** — raw shipment and transaction data was transformed into **actionable business intelligence**.

The findings revealed systemic inefficiencies such as:

- Missed SLAs and multi‑day delivery delays.
- High return ratios, especially for Bank and Card payments.
- Uneven courier workload distribution.
- Lack of accurate warehouse capacity tracking.
- Significant pending payments with no recorded settlements.
- Tracking inconsistencies leading to customer dissatisfaction.

Through **data‑backed interpretations** and **targeted recommendations**, the project proposed interventions including:

- SLA monitoring dashboards and “at‑risk shipment” alerts.
- Return reduction strategies via address validation and NDR handling.
- Courier workload balancing algorithms.
- Warehouse surge planning and overflow partnerships.
- Automated payment reconciliation frameworks.
- Improved milestone tracking and data hygiene.

If implemented, these solutions would:

- Improve customer satisfaction.
- Strengthen financial control and cash flow.
- Optimize resource utilization.
- Reduce operational costs.
- Position the Karachi branch as a more reliable and competitive logistics hub within the TCS network.

---

##  Future Scope

While this project addressed six core operational challenges, there is significant potential to extend the analysis and build a **comprehensive logistics optimization framework**.  
Future enhancements may include:

1. **Predictive Analytics**
   
   - Use machine learning models to forecast delivery delays, return likelihood, and payment default risks before they occur.

3. **Real‑Time Dashboards**
   
   - Develop Power BI dashboards integrated with live data streams for proactive monitoring and decision‑making.

5. **Customer Behavior Analysis**
   
   - Mine customer‑level data to segment profiles, understand buying patterns, and predict repeat returns.

7. **Advanced Route Optimization**
    
   - Incorporate geospatial analytics to optimize courier routes, reduce mileage, and improve first‑attempt delivery success.

9. **Financial Automation**
    
   - Automate COD and Bank reconciliation with direct API integrations to reduce pending cases and improve cash flow.

11. **Scalability Testing**
    
   - Stress‑test warehouse and courier capacity against peak seasonal loads (Eid, sales events, promotions) to ensure resilience.

By expanding into these areas, the Karachi branch can move from **reactive problem‑solving** to **proactive performance optimization**, creating a sustainable competitive advantage for TCS.
