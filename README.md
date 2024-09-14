Car Showroom Database
Overview
This project involves the creation and management of a relational database for a car showroom. The database is designed to handle various aspects of car sales, customer information, user logins, and transactions. It includes tables for storing data about cars, customers, sales details, administrative users, and transactions.

Database Schema
Tables
Car: Stores details about each car available in the showroom.

CarID: Unique identifier for the car.
CarBrand: Brand of the car.
CarPrice: Price of the car.
CarModel: Model year of the car.
CarName: Name of the car model.
StockQuantity: Number of cars in stock.
Transmitter: Type of transmission (e.g., Auto, Manual).
AirConditioned: Indicates if the car is air-conditioned (Yes/No).
Login: Stores login credentials for users.

UserName: Unique username for the user.
Email: User's email address.
UserPassword: User's password.
Last_LoginDate: Date of last login.
Customer: Stores customer information.

CustomerID: Unique identifier for the customer.
CustomerName: Name of the customer.
Gender: Gender of the customer.
MobileNo: Mobile number of the customer.
CustomerAddress: Address of the customer.
UserName: Username associated with the customer (foreign key).
SaleCarDetail: Tracks car sales.

RegistrationNo: Unique registration number for the sale.
CustomerID: Customer who purchased the car (foreign key).
CarID: Car that was purchased (foreign key).
Administrator: Contains details about the administrative users.

AdminName: Name of the administrator.
AdminID: Unique identifier for the administrator.
AdminPassword: Password for the administrator.
Designation: Job title or designation.
Transaction: Records details of transactions.

TransactionID: Unique identifier for the transaction.
Amount: Amount of the transaction.
CardNumber: Payment card number used for the transaction.
CustomerID: Customer who made the transaction (foreign key).
AdminID: Administrator who processed the transaction (foreign key).
Trans_TimeStamp: Timestamp of the transaction.
Operations
Create
Creates the database and tables.
Inserts sample data into the tables.
Update
Updates customer address and car stock quantity.
Delete
Deletes transactions older than a specific date.
Deletes a customer with a specific ID.
Insert
Adds new login, customer, and transaction records.
Normalization
The database schema has been normalized to avoid redundancy and ensure data integrity. The normalization process details can be found in the accompanying normalization Excel file.

Project Report
A detailed project report outlining the design, implementation, and functionality of the database can be found in the project report document.

Files
car_showroom.sql: SQL script for creating and populating the database.
Normalization.xlsx: Excel file showing the normalization process.
Project_Report.pdf: Detailed project report.
