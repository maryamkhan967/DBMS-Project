CREATE DATABASE car_showroom;
USE car_showroom;

CREATE TABLE Car (
    CarID INT NOT NULL,
    CarBrand VARCHAR(20) NOT NULL,
    CarPrice DECIMAL(15,2) NOT NULL, 
    CarModel VARCHAR(20) NOT NULL, 
    CarName VARCHAR(20) NOT NULL,
    StockQuantity INT NOT NULL,
    Transmitter VARCHAR(10) NOT NULL,
    AirConditioned VARCHAR(10) NOT NULL,
    PRIMARY KEY (CarID)
);

INSERT INTO Car (CarID, CarName, CarBrand, CarModel, CarPrice, StockQuantity, Transmitter, AirConditioned) VALUES
(1, 'Prado-TX', 'Toyota', '2022', 100000.00, 10, 'Auto', 'Yes'),
(2, 'Prado-TX', 'Toyota', '2024', 20000000.00, 5, 'Auto', 'Yes'),
(3, 'BMW M5 SERIES', 'BMW', '2019', 367000.00, 14, 'Manual', 'No'),
(4, 'BMW M5 SERIES', 'BMW', '2020', 2000000.00, 3, 'Auto', 'No'),
(5, 'G-WAGON', 'Mercedes', '2023', 10000000.00, 36, 'Manual', 'No'),
(6, 'G-WAGON', 'Mercedes', '2021', 15000000.00, 25, 'Manual', 'Yes'),
(7, 'CROWN-RS', 'Toyota', '2021', 400000.00, 23, 'Auto', 'Yes'),
(8, 'CROWN-RS', 'Toyota', '2022', 600467.00, 0, 'Auto', 'Yes'),
(9, 'MARK X', 'Toyota', '2022', 800500.00, 8, 'Auto', 'Yes'),
(10, 'CIVIC-X', 'Honda', '2022', 120000.00, 40, 'Auto', 'No'),
(11, 'Range Rover', 'Range Rover', '2020', 14000000.00, 30, 'Manual', 'Yes'),
(12, 'Lexus-570', 'Lexus', '2021', 506890.00, 39, 'Manual', 'Yes'),
(13, 'Lexus-570', 'Lexus', '2022', 700000.00, 27, 'Manual', 'Yes'),
(14, 'Lexus-580', 'Lexus', '2023', 500000.00, 46, 'Auto', 'Yes'),
(15, 'Patrol', 'Nissan Patrol', '2022', 600000.00, 21, 'Auto', 'Yes'),
(16, 'GTR', 'Nissan', '2022', 350000.00, 9, 'Auto', 'Yes'),
(17, 'Range Rover', 'Range Rover', '2023', 678000.00, 44, 'Auto', 'Yes'),
(18, 'X5', 'BMW', '2023', 650000.00, 4, 'Auto', 'Yes'),
(19, 'Q7', 'Audi', '2023', 700000.00, 6, 'Auto', 'Yes'),
(20, 'GLE', 'Mercedes', '2023', 690000.00, 11, 'Auto', 'Yes');

CREATE TABLE Login (
    UserName VARCHAR(15) NOT NULL, 
    Email VARCHAR(30) NOT NULL, 
    UserPassword VARCHAR(20) NOT NULL, 
    Last_LoginDate DATE NOT NULL,
    PRIMARY KEY (UserName)
);

INSERT INTO Login (UserName, UserPassword, Email, Last_LoginDate) VALUES
('ayaan123', 'Ayaan@2024', 'ayaan123@example.com', '2024-07-15'),
('bilal456', 'Bilal@2024', 'bilal456@example.com', '2024-08-02'),
('hamza789', 'Hamza@2024', 'hamza789@example.com', '2024-09-20'),
('tehreem101', 'Tehreem@2024', 'tehreem101@example.com', '2019-10-11'),
('neha202', 'Neha@2024', 'neha202@example.com', '2020-11-30'),
('ayesha303', 'Ayesha@2024', 'ayesha303@example.com', '2023-01-05'),
('noor404', 'Noor@2024', 'noor404@example.com', '2023-02-14'),
('arham505', 'Arham@2024', 'arham505@example.com', '2021-03-22'),
('ammar606', 'Ammar@2024', 'ammar606@example.com', '2020-04-18'),
('zara707', 'Zara@2024', 'zara707@example.com', '2023-05-29'),
('sana808', 'Sana@2024', 'sana808@example.com', '2023-06-12'),
('zain909', 'Zain@2024', 'zain909@example.com', '2024-07-25'),
('shahbaz111', 'Shahbaz@2024', 'shahbaz111@example.com', '2023-08-09'),
('asad222', 'Asad@2024', 'asad222@example.com', '2024-09-17'),
('john_doe', 'John@2018', 'john.doe@example.com', '2018-06-15'),
('michael@456', 'Mike@2020', 'michael@example.com', '2020-09-10');

CREATE TABLE Customer (
    CustomerID INT NOT NULL, 
    CustomerName VARCHAR(20) NOT NULL, 
    Gender VARCHAR(10) NOT NULL,
    MobileNo VARCHAR(15) NOT NULL, 
    CustomerAddress VARCHAR(50) NOT NULL,
    UserName VARCHAR(15) NOT NULL,
    PRIMARY KEY (CustomerID),
    FOREIGN KEY (UserName) REFERENCES Login(UserName)
);

INSERT INTO Customer (CustomerID, CustomerName, Gender, MobileNo, CustomerAddress, UserName) VALUES
(1, 'Ayaan', 'Male', '0301-1234567', 'House No. 123, Street 5, Sector F-8/3, Islamabad', 'ayaan123'),
(2, 'Bilal', 'Male', '0302-2345678', 'Flat No. 7, Block C, Gulberg III, Lahore', 'bilal456'),
(3, 'Hamza', 'Male', '0303-3456789', 'Plot No. 15, Street 10, Phase 6, DHA, Karachi', 'hamza789'),
(4, 'Ayesha', 'Female', '0304-4567890', '22-A, Gulshan-e-Iqbal, Block 7, Karachi', 'ayesha303'),
(5, 'Noor', 'Female', '0305-5678901', 'House No. 456, Street 20, Model Town, Lahore', 'noor404'),
(6, 'Zara', 'Female', '0306-6789012', 'Apartment No. 3B, Ocean Tower, Clifton, Karachi', 'zara707'),
(7, 'Sana', 'Female', '0307-7890123', '33-B, Street 15, Sector G-7/2, Islamabad', 'sana808'),
(8, 'Zain', 'Male', '0308-8901234', 'House No. 789, Street 4, Saadi Town Rawalpindi', 'zain909'),
(9, 'Shahbaz', 'Male', '0309-9012345', 'Office No. 10, 2nd Floor, Plaza Center Peshawar', 'shahbaz111'),
(10, 'Asad', 'Male', '0310-0123456', 'Villa No. 27, Bahria Enclave, Phase 4, Islamabad', 'asad222'),
(11, 'Michael', 'Male', '0310-0123456', 'H no L-706 Sector 5A/2 North Karachi, Karachi', 'michael@456');

CREATE TABLE SaleCarDetail (
    RegistrationNo VARCHAR(20) NOT NULL, 
    CustomerID INT NOT NULL, 
    CarID INT NOT NULL, 
    PRIMARY KEY (RegistrationNo),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

INSERT INTO SaleCarDetail (RegistrationNo, CustomerID, CarID) VALUES
('AKB-292', 1, 1),
('BEC-359', 2, 4),
('FCD-112', 3, 6),
('AKB-298', 3, 1),
('CAA-109', 4, 7),
('CFA-420', 5, 9),
('AXZ-569', 5, 11),
('FKK-119', 5, 15),
('BXC-999', 6, 14),
('FKB-112', 6, 10),
('KBB-109', 7, 16),
('AXZ-563', 8, 11),
('FKK-103', 9, 15),
('AZX-112', 10, 13),
('KBB-119', 10, 16),
('BXC-987', 11, 14);

CREATE TABLE Administrator (
    AdminName VARCHAR(20) NOT NULL,
    AdminID INT NOT NULL,
    AdminPassword VARCHAR(30) NOT NULL, 
    Designation VARCHAR(30) NOT NULL, 
    PRIMARY KEY (AdminID)
);

INSERT INTO Administrator (AdminID, AdminPassword, AdminName, Designation) VALUES
(1, 'sherydon123', 'Sheheryar', 'CEO'),
(2, 'abd_151', 'Abdullah', 'Manager'),
(3, 'maryam_967', 'Maryam', 'Database Administrator');

CREATE TABLE Transaction (
    TransactionID INT NOT NULL,
    Amount DECIMAL(15, 2) NOT NULL, 
    CardNumber VARCHAR(30) NOT NULL,
    CustomerID INT NOT NULL, 
    AdminID INT NOT NULL, 
    Trans_TimeStamp TIMESTAMP NOT NULL,
    PRIMARY KEY (TransactionID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (AdminID) REFERENCES Administrator(AdminID)
);

INSERT INTO Transaction (TransactionID, Amount, CardNumber, Trans_TimeStamp, CustomerID, AdminID) VALUES
(1, 100000.00, '1234-5678-9012-3456', '2024-07-06 12:00:00', 1, 1),
(2, 2000000.00, '1234-5678-9012-3457', '2024-08-01 17:00:00', 2, 2),
(3, 15000000.00, '1234-5678-9012-3458', '2024-09-02 18:00:00', 3, 3),
(4, 100000.00, '1234-5678-9012-3459', '2023-05-29 19:00:00', 3, 2),
(5, 400000.00, '1234-5678-9012-3460', '2023-06-12 16:00:00', 4, 2),
(6, 800500.00, '1234-5678-9012-3461', '2024-07-06 01:00:00', 5, 3),
(7, 14000000.00, '1234-5678-9012-3462', '2023-08-09 02:00:00', 5, 2),
(8, 600000.00, '1234-5678-9012-3463', '2024-09-17 03:00:00', 5, 2),
(9, 500000.00, '1234-5678-9012-3464', '2024-07-06 20:00:00', 6, 3),
(10, 120000.00, '1234-5678-9012-3465', '2024-08-01 21:00:00', 6, 1),
(11, 350000.00, '1234-5678-9012-3466', '2024-09-02 22:00:00', 7, 3),
(12, 14000000.00, '1234-5678-9012-3467', '2024-07-06 23:00:00', 8, 3),
(13, 600000.00, '1234-5678-9012-3468', '2024-08-01 00:00:00', 9, 3),
(14, 700000.00, '1234-5678-9012-3469', '2024-09-02 01:00:00', 10, 1),
(15, 350000.00, '1234-5678-9012-3470', '2024-07-06 02:00:00', 10, 1),
(16, 350000.00, '1234-5678-9012-3471', '2024-08-01 03:00:00', 10, 1),
(17, 500000.00, '1234-5678-9012-3472', '2024-09-02 04:00:00', 11, 2);

-- UPDATE
UPDATE Customer
SET CustomerAddress = 'House No. 456, New Street, New Sector, New York'
WHERE CustomerID = 5;

UPDATE Car
SET StockQuantity = 15
WHERE CarID = 20;

-- DELETE
DELETE FROM Transaction
WHERE Trans_TimeStamp < '2023-05-30'; 

DELETE FROM Customer
WHERE CustomerID = 21;

-- INSERT
INSERT INTO Login (UserName, UserPassword, Email, Last_LoginDate) 
VALUES('ali_123','ali789','ali@example.com', '2024-07-30');

INSERT INTO Customer (CustomerID, CustomerName, Gender, MobileNo, CustomerAddress, UserName)
VALUES (12, 'Ali', 'Male', '0301-2345678', 'House No. 321, New Street, Sector G-6/2, Islamabad', 'ali_123');

INSERT INTO Transaction (TransactionID, Amount, CardNumber, Trans_TimeStamp, CustomerID, AdminID)
VALUES (18, 250000.00, '1234-5678-9012-3480', '2024-09-30 10:00:00', 7, 2);



