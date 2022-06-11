create database AddressBook_Service
create table AddressBook_Table
(ID int IDENTITY(1,1) Primary Key,
Firstame varchar(15)Not Null,
Lastname varchar(15)Not Null,
Address varchar(50)Not Null,
City varchar(10)Not Null,
State varchar(10) Not Null,
Zip Bigint Not Null,
PhoneNumber Bigint Not Null,
Email varchar(20) Not Null)