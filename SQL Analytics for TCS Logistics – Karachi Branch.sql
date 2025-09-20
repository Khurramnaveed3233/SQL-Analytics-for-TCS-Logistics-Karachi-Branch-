create database TCS_LogisticsDB

use TCS_LogisticsDB 

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    ContactNumber NVARCHAR(20),
    Email NVARCHAR(100) UNIQUE,
    RegistrationDate DATE NOT NULL
);

INSERT INTO Customers (FullName, City, ContactNumber, Email, RegistrationDate) VALUES
('Ali Khan', 'Karachi', '03001234567', 'ali.khan@example.com', '2022-01-15'),
('Sara Ahmed', 'Lahore', '03019876543', 'sara.ahmed@example.com', '2022-03-10'),
('Usman Iqbal', 'Islamabad', '03121234567', 'usman.iqbal@example.com', '2022-05-20'),
('Fatima Noor', 'Faisalabad', '03211234567', 'fatima.noor@example.com', '2022-07-25'),
('Hassan Raza', 'Multan', '03331234567', 'hassan.raza@example.com', '2022-09-05'),
('Zain Ali', 'Karachi', '03451234567', 'zain.ali@example.com', '2022-10-11'),
('Maryam Khan', 'Lahore', '03561234567', 'maryam.khan@example.com', '2022-11-18'),
('Bilal Ahmed', 'Islamabad', '03091234567', 'bilal.ahmed@example.com', '2023-01-22'),
('Ayesha Malik', 'Faisalabad', '03181234567', 'ayesha.malik@example.com', '2023-02-14'),
('Omer Farooq', 'Multan', '03291234567', 'omer.farooq@example.com', '2023-03-30'),
('Hina Sheikh', 'Karachi', '03391234567', 'hina.sheikh@example.com', '2023-04-12'),
('Imran Ali', 'Lahore', '03491234567', 'imran.ali@example.com', '2023-05-05'),
('Sana Rauf', 'Islamabad', '03011234568', 'sana.rauf@example.com', '2023-06-09'),
('Junaid Khan', 'Faisalabad', '03111234568', 'junaid.khan@example.com', '2023-07-15'),
('Nida Yasir', 'Multan', '03211234568', 'nida.yasir@example.com', '2023-08-18'),
('Arif Mehmood', 'Karachi', '03311234568', 'arif.mehmood@example.com', '2023-09-02'),
('Khadija Bibi', 'Lahore', '03411234568', 'khadija.bibi@example.com', '2023-09-25'),
('Tariq Javed', 'Islamabad', '03511234568', 'tariq.javed@example.com', '2023-10-11'),
('Mehwish Aslam', 'Faisalabad', '03611234568', 'mehwish.aslam@example.com', '2023-10-29'),
('Shahid Afridi', 'Multan', '03711234568', 'shahid.afridi@example.com', '2023-11-15'),
('Rida Khan', 'Karachi', '03811234568', 'rida.khan@example.com', '2023-11-29'),
('Hamza Malik', 'Lahore', '03911234568', 'hamza.malik@example.com', '2023-12-10'),
('Aiman Ali', 'Islamabad', '03021234569', 'aiman.ali@example.com', '2023-12-22'),
('Noman Siddiqui', 'Faisalabad', '03121234569', 'noman.siddiqui@example.com', '2024-01-05'),
('Bushra Anwar', 'Multan', '03221234569', 'bushra.anwar@example.com', '2024-01-20');

CREATE TABLE Couriers (
    CourierID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Region NVARCHAR(50) NOT NULL,
    JoiningDate DATE NOT NULL,
    Rating DECIMAL(2,1) CHECK (Rating >= 1 AND Rating <= 5)
);

INSERT INTO Couriers (FullName, Region, JoiningDate, Rating) VALUES
('Ahmed Raza', 'Karachi', '2020-01-10', 4.5),
('Khalid Hussain', 'Lahore', '2019-03-15', 4.2),
('Waqar Ali', 'Islamabad', '2021-05-20', 3.8),
('Tahir Mehmood', 'Faisalabad', '2022-07-25', 4.7),
('Rashid Khan', 'Multan', '2018-09-05', 4.0),
('Sajid Ahmed', 'Karachi', '2020-10-11', 4.3),
('Imtiaz Ali', 'Lahore', '2021-11-18', 3.9),
('Fawad Khan', 'Islamabad', '2019-01-22', 4.6),
('Asif Iqbal', 'Faisalabad', '2018-02-14', 4.1),
('Kashif Raza', 'Multan', '2019-03-30', 3.7),
('Javed Anwar', 'Karachi', '2020-04-12', 4.8),
('Nadeem Shah', 'Lahore', '2021-05-05', 4.4),
('Adnan Ali', 'Islamabad', '2022-06-09', 4.2),
('Faisal Sheikh', 'Faisalabad', '2019-07-15', 3.6),
('Rizwan Khan', 'Multan', '2020-08-18', 4.0),
('Shahbaz Rafiq', 'Karachi', '2021-09-02', 4.9),
('Qasim Farooq', 'Lahore', '2019-09-25', 3.8),
('Farhan Malik', 'Islamabad', '2020-10-11', 4.5),
('Shafiq Ahmed', 'Faisalabad', '2021-10-29', 4.1),
('Yasir Ali', 'Multan', '2022-11-15', 3.9),
('Salman Tariq', 'Karachi', '2018-11-29', 4.3),
('Saad Jamil', 'Lahore', '2019-12-10', 4.6),
('Nouman Khan', 'Islamabad', '2020-12-22', 4.0),
('Talha Raza', 'Faisalabad', '2021-01-05', 4.7),
('Moiz Ali', 'Multan', '2022-01-20', 4.2);


CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY IDENTITY(1,1),
    Location NVARCHAR(100) NOT NULL,
    Capacity INT NOT NULL,
    ManagerName NVARCHAR(100)
);

INSERT INTO Warehouses (Location, Capacity, ManagerName) VALUES
('Karachi - Korangi', 1000, 'Aslam Khan'),
('Karachi - SITE', 800, 'Rashid Ahmed'),
('Lahore - Johar Town', 1200, 'Imran Malik'),
('Lahore - Shalimar', 950, 'Bilal Asif'),
('Islamabad - I-9', 700, 'Fahad Khan'),
('Islamabad - G-10', 600, 'Ali Raza'),
('Faisalabad - D Ground', 850, 'Usman Tariq'),
('Faisalabad - Samundari Road', 750, 'Nadeem Iqbal'),
('Multan - Bosan Road', 900, 'Khalid Rauf'),
('Multan - Gulgasht', 650, 'Aamir Sohail'),
('Hyderabad - Auto Bhan', 500, 'Shahid Ali'),
('Peshawar - Saddar', 550, 'Zubair Khan'),
('Quetta - Jinnah Road', 400, 'Sami Ullah'),
('Sialkot - Cantt', 480, 'Asif Khan'),
('Gujranwala - Model Town', 520, 'Tariq Hussain'),
('Bahawalpur - Satellite Town', 600, 'Noman Shah'),
('Sargodha - University Road', 450, 'Irfan Malik'),
('Rawalpindi - Saddar', 650, 'Adnan Raza'),
('Sukkur - Barrage Colony', 300, 'Waqar Ali'),
('Abbottabad - Supply Bazar', 280, 'Kamran Sheikh'),
('Mardan - College Road', 350, 'Waseem Khan'),
('Rahim Yar Khan - Airport Road', 400, 'Tariq Ali'),
('Okara - Faisalabad Road', 370, 'Hamza Sheikh'),
('DG Khan - Hospital Road', 320, 'Imtiaz Ahmed'),
('Swat - Mingora', 290, 'Haroon Rasheed');

--- 

select * from Parcels

CREATE TABLE Parcels (
    ParcelID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    SourceCity NVARCHAR(50) NOT NULL,
    DestinationCity NVARCHAR(50) NOT NULL,
    Weight DECIMAL(6,2) NOT NULL, -- kg
    OrderDate DATE NOT NULL,
    DeliveryDate DATE,
    Status NVARCHAR(20) CHECK (Status IN ('Delivered','In-Transit','Returned','Lost')),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Parcels (CustomerID, SourceCity, DestinationCity, Weight, OrderDate, DeliveryDate, Status) VALUES
(1, 'Karachi', 'Lahore', 2.50, '2023-01-05', '2023-01-08', 'Delivered'),
(2, 'Lahore', 'Islamabad', 1.20, '2023-01-06', '2023-01-07', 'Delivered'),
(3, 'Islamabad', 'Karachi', 3.40, '2023-01-07', '2023-01-11', 'Returned'),
(4, 'Faisalabad', 'Multan', 0.80, '2023-01-08', '2023-01-09', 'Delivered'),
(5, 'Multan', 'Karachi', 4.00, '2023-01-09', '2023-01-13', 'Delivered'),
(6, 'Karachi', 'Islamabad', 1.70, '2023-01-10', NULL, 'In-Transit'),
(7, 'Lahore', 'Faisalabad', 2.20, '2023-01-11', '2023-01-12', 'Delivered'),
(8, 'Islamabad', 'Lahore', 3.00, '2023-01-12', '2023-01-14', 'Delivered'),
(9, 'Faisalabad', 'Karachi', 1.50, '2023-01-13', '2023-01-17', 'Returned'),
(10, 'Multan', 'Islamabad', 2.80, '2023-01-14', '2023-01-17', 'Delivered'),
(11, 'Karachi', 'Multan', 0.90, '2023-01-15', '2023-01-17', 'Delivered'),
(12, 'Lahore', 'Karachi', 5.00, '2023-01-16', '2023-01-20', 'Delivered'),
(13, 'Islamabad', 'Multan', 2.30, '2023-01-17', '2023-01-19', 'Delivered'),
(14, 'Faisalabad', 'Islamabad', 1.10, '2023-01-18', NULL, 'In-Transit'),
(15, 'Multan', 'Lahore', 4.50, '2023-01-19', '2023-01-23', 'Lost'),
(16, 'Karachi', 'Faisalabad', 2.00, '2023-01-20', '2023-01-23', 'Delivered'),
(17, 'Lahore', 'Multan', 3.20, '2023-01-21', '2023-01-22', 'Delivered'),
(18, 'Islamabad', 'Faisalabad', 1.90, '2023-01-22', '2023-01-24', 'Delivered'),
(19, 'Faisalabad', 'Lahore', 2.60, '2023-01-23', '2023-01-24', 'Returned'),
(20, 'Multan', 'Karachi', 3.80, '2023-01-24', '2023-01-28', 'Delivered'),
(21, 'Karachi', 'Islamabad', 1.30, '2023-01-25', '2023-01-27', 'Delivered'),
(22, 'Lahore', 'Karachi', 2.90, '2023-01-26', '2023-01-30', 'Delivered'),
(23, 'Islamabad', 'Lahore', 1.70, '2023-01-27', '2023-01-29', 'Delivered'),
(24, 'Faisalabad', 'Multan', 2.40, '2023-01-28', '2023-01-29', 'Delivered'),
(25, 'Multan', 'Faisalabad', 0.70, '2023-01-29', '2023-01-30', 'Delivered');

--- 


CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY IDENTITY(1,1),
    ParcelID INT NOT NULL,
    CourierID INT NOT NULL,
    WarehouseID INT NOT NULL,
    DispatchDate DATE NOT NULL,
    ArrivalDate DATE,
    DeliveryTimeHours INT,
    FOREIGN KEY (ParcelID) REFERENCES Parcels(ParcelID),
    FOREIGN KEY (CourierID) REFERENCES Couriers(CourierID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID)
);

INSERT INTO Shipments (ParcelID, CourierID, WarehouseID, DispatchDate, ArrivalDate, DeliveryTimeHours) VALUES
(1, 1, 1, '2023-01-05', '2023-01-08', 72),
(2, 2, 3, '2023-01-06', '2023-01-07', 24),
(3, 3, 5, '2023-01-07', '2023-01-11', 96),
(4, 4, 7, '2023-01-08', '2023-01-09', 24),
(5, 5, 9, '2023-01-09', '2023-01-13', 96),
(6, 6, 1, '2023-01-10', NULL, NULL),
(7, 7, 3, '2023-01-11', '2023-01-12', 24),
(8, 8, 5, '2023-01-12', '2023-01-14', 48),
(9, 9, 7, '2023-01-13', '2023-01-17', 96),
(10, 10, 9, '2023-01-14', '2023-01-17', 72),
(11, 11, 1, '2023-01-15', '2023-01-17', 48),
(12, 12, 3, '2023-01-16', '2023-01-20', 96),
(13, 13, 5, '2023-01-17', '2023-01-19', 48),
(14, 14, 7, '2023-01-18', NULL, NULL),
(15, 15, 9, '2023-01-19', '2023-01-23', 96),
(16, 16, 1, '2023-01-20', '2023-01-23', 72),
(17, 17, 3, '2023-01-21', '2023-01-22', 24),
(18, 18, 5, '2023-01-22', '2023-01-24', 48),
(19, 19, 7, '2023-01-23', '2023-01-24', 24),
(20, 20, 9, '2023-01-24', '2023-01-28', 96),
(21, 21, 1, '2023-01-25', '2023-01-27', 48),
(22, 22, 3, '2023-01-26', '2023-01-30', 96),
(23, 23, 5, '2023-01-27', '2023-01-29', 48),
(24, 24, 7, '2023-01-28', '2023-01-29', 24),
(25, 25, 9, '2023-01-29', '2023-01-30', 24);

ALTER TABLE Shipments
ADD Status VARCHAR(50);

select * from Shipments


-- Delivered shipments

UPDATE Shipments SET Status = 'Delivered' WHERE ShipmentID IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14);

-- Returned shipments

UPDATE Shipments SET Status = 'Returned' WHERE ShipmentID IN (15,16,17,18,19,20);

-- In-Transit shipments

UPDATE Shipments SET Status = 'In-Transit' WHERE ShipmentID IN (21,22,23);

-- Pending shipments

UPDATE Shipments SET Status = 'Pending' WHERE ShipmentID IN (24,25);

UPDATE Shipments 
SET Status = 'Delivered' 
WHERE ShipmentID IN (26,27,28,29,30,31,32,33,34,35,36,37);

-- Returned shipments
UPDATE Shipments 
SET Status = 'Returned' 
WHERE ShipmentID IN (38,39,40,41,42,43,44);

-- In-Transit shipments
UPDATE Shipments 
SET Status = 'In-Transit' 
WHERE ShipmentID IN (45,46,47,48);

-- Pending shipments
UPDATE Shipments 
SET Status = 'Pending' 
WHERE ShipmentID IN (49,50);

------

select * from Payments

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    ParcelID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod NVARCHAR(20) CHECK (PaymentMethod IN ('COD','Card','Bank')),
    PaymentStatus NVARCHAR(20) CHECK (PaymentStatus IN ('Paid','Pending','Returned')),
    FOREIGN KEY (ParcelID) REFERENCES Parcels(ParcelID)
);

INSERT INTO Payments (ParcelID, Amount, PaymentMethod, PaymentStatus) VALUES
(1, 1200.00, 'COD', 'Paid'),
(2, 800.00, 'Card', 'Paid'),
(3, 1500.00, 'COD', 'Pending'),
(4, 600.00, 'Bank', 'Paid'),
(5, 2000.00, 'COD', 'Paid'),
(6, 950.00, 'COD', 'Pending'),
(7, 700.00, 'Bank', 'Paid'),
(8, 1300.00, 'Card', 'Paid'),
(9, 1100.00, 'COD', 'Pending'),
(10, 1450.00, 'Bank', 'Paid'),
(11, 500.00, 'COD', 'Paid'),
(12, 2500.00, 'Card', 'Paid'),
(13, 1200.00, 'COD', 'Paid'),
(14, 900.00, 'Bank', 'Pending'),
(15, 2200.00, 'COD', 'Returned'),
(16, 1600.00, 'Card', 'Paid'),
(17, 1400.00, 'Bank', 'Paid'),
(18, 1000.00, 'COD', 'Paid'),
(19, 1150.00, 'Bank', 'Pending'),
(20, 1750.00, 'Card', 'Paid'),
(21, 800.00, 'COD', 'Paid'),
(22, 1900.00, 'Bank', 'Paid'),
(23, 950.00, 'Card', 'Paid'),
(24, 1050.00, 'COD', 'Paid'),
(25, 400.00, 'Bank', 'Paid');


---------------------------------------------------------------------

=== Problem 1: Delivery Delays

SELECT 
COUNT(CASE WHEN DATEDIFF(HOUR, s.DispatchDate, s.ArrivalDate) > 48 THEN 1 END) * 100.0 / COUNT(*) AS DelayedPercent,
COUNT(CASE WHEN DATEDIFF(HOUR, s.DispatchDate, s.ArrivalDate) <= 48 THEN 1 END) * 100.0 / COUNT(*) AS OnTimePercent,
AVG(DATEDIFF(HOUR, s.DispatchDate, s.ArrivalDate)) AS AvgDeliveryHours,
STRING_AGG(CONCAT('ShipmentID:', s.ShipmentID, ', Customer:', c.FullName), '; ') AS ShipmentDetails
FROM Shipments s
JOIN Parcels p ON s.ParcelID = p.ParcelID
JOIN Customers c ON p.CustomerID = c.CustomerID;

====  Problem 2: High Return Rate

SELECT 
    p.PaymentMethod,
    COUNT(CASE WHEN s.Status = 'Returned' THEN 1 END) * 100.0 / COUNT(*) AS ReturnRatePercent,
    COUNT(CASE WHEN s.Status = 'Delivered' THEN 1 END) * 100.0 / COUNT(*) AS DeliveredPercent,
    STRING_AGG(CONCAT('ShipmentID:', s.ShipmentID, ', Customer:', c.FullName), '; ') AS ReturnedShipments
FROM Shipments s
JOIN Parcels pr ON s.ParcelID = pr.ParcelID
JOIN Payments p ON pr.ParcelID = p.ParcelID
JOIN Customers c ON pr.CustomerID = c.CustomerID
GROUP BY p.PaymentMethod;

=== Problem 3: Courier Load Imbalance

SELECT 
COUNT(CASE WHEN s.Status = 'Returned' THEN 1 END) * 100.0 / COUNT(*) AS ReturnPercent,
COUNT(CASE WHEN s.Status = 'Delivered' THEN 1 END) * 100.0 / COUNT(*) AS DeliveredPercent
FROM Shipments s;

======== Problem 4: Warehouse Overcapacity

SELECT 
CAST(s.DispatchDate AS DATE) AS DispatchDay,
COUNT(s.ShipmentID) AS DailyParcels,
CASE 
WHEN COUNT(s.ShipmentID) > 500 THEN 'Over Capacity'
ELSE 'Within Capacity'
END AS CapacityStatus
FROM Shipments s
GROUP BY CAST(s.DispatchDate AS DATE)
ORDER BY DispatchDay;


==== Problem 5: Payment Reconciliation Issues

SELECT 
    p.PaymentMethod,
    COUNT(CASE WHEN p.PaymentStatus = 'Pending' THEN 1 END) * 100.0 / COUNT(*) AS PendingPercent,
    COUNT(CASE WHEN p.PaymentStatus = 'Completed' THEN 1 END) * 100.0 / COUNT(*) AS CompletedPercent,
    STRING_AGG(CONCAT('PaymentID:', p.PaymentID, ', ParcelID:', pr.ParcelID, ', Amount:', p.Amount), '; ') AS PendingPaymentsDetails
FROM Payments p
JOIN Parcels pr ON p.ParcelID = pr.ParcelID
GROUP BY p.PaymentMethod;

=== Problem 6: Customer Complaints

SELECT 
    s.ShipmentID,
    c.FullName AS CustomerName,
    DATEDIFF(DAY, s.DispatchDate, ISNULL(s.ArrivalDate, GETDATE())) AS DaysInTransit,
    s.Status,
    p.PaymentMethod
FROM Shipments s
JOIN Parcels pr ON s.ParcelID = pr.ParcelID
JOIN Customers c ON pr.CustomerID = c.CustomerID
JOIN Payments p ON pr.ParcelID = p.ParcelID
WHERE s.Status = 'In-Transit' AND DATEDIFF(DAY, s.DispatchDate, ISNULL(s.ArrivalDate, GETDATE())) > 3
ORDER BY DaysInTransit DESC;

