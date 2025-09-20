#  SQL Analytics for TCS Logistics – Karachi Branch  

**Optimizing Courier Operations, Delivery SLAs, and Payment Reconciliation through Data-Driven Insights**

---

##  Project Purpose  
This project simulates a real-world BI engagement with TCS Logistics, focusing on Karachi—Pakistan’s highest-volume delivery zone. Using SQL as the analytical backbone, it uncovers operational inefficiencies, quantifies business risks, and proposes scalable interventions across delivery, returns, courier workload, warehouse flow, and payment reconciliation.

---

## Data Architecture & Modeling  

- **Entities Modeled:** `Customers`, `Couriers`, `Warehouses`, `Parcels`, `Shipments`, `Payments`  
- **Normalization Level:** 3NF for optimal query performance and referential integrity  
- **Synthetic Data Volume:** ~25 rows per table, structured to simulate real-world complexity  
- **Design Philosophy:** Modular, scalable schema with clear foreign key relationships for BI extensibility

---

##  SQL Techniques Used  

| Category         | Techniques                                      |
|------------------|--------------------------------------------------|
| **Core Analytics** | Joins, Aggregations, Filtering                  |
| **Advanced Logic** | `CASE`, `DATEDIFF`, `STRING_AGG`               |
| **Modularization** | CTEs, Subqueries                               |
| **Performance**    | Index-aware joins, minimal nested logic        |
| **Readability**    | Commented queries, aliasing, business-friendly naming |

---

##  Strategic Business Questions Answered  

| Question                              | Insight                          | Strategic Implication              |
|---------------------------------------|----------------------------------|------------------------------------|
| What % of shipments breach SLA?       | Avg delay: **58 hours**          | SLA redesign, courier reallocation |
| Which payment modes drive returns?    | Bank/Card > COD                  | Payment flow optimization          |
| Are couriers overloaded?              | 26% return rate, uneven parcel load | Route balancing, incentive redesign |
| Is warehouse capacity misaligned?     | Flat volume, no surge logic      | Need for dynamic inflow tracking   |
| How many payments are unreconciled?   | 25–27% pending                   | Cash flow strain, manual overhead  |
| Are customer complaints traceable?    | Duplicate “In-Transit” records   | Tracking system overhaul           |

---

##  Sample SQL Insight – Courier Load Imbalance  

SELECT
  c.CourierName,
  COUNT(p.ParcelID) AS TotalParcels,
  COUNT(CASE WHEN p.Status = 'Returned' THEN 1 END) AS ReturnedParcels,
  ROUND(COUNT(CASE WHEN p.Status = 'Returned' THEN 1 END) * 100.0 / COUNT(p.ParcelID), 2) AS ReturnRate
FROM Couriers c
JOIN Parcels p ON c.CourierID = p.CourierID
GROUP BY c.CourierName
ORDER BY ReturnRate DESC;
