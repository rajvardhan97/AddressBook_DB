create database AddressBook_Service

create table AddressBook_Table
(ID int IDENTITY(1,1) Primary Key,
Firstname varchar(15)Not Null,
Lastname varchar(15)Not Null,
Address varchar(50)Not Null,
City varchar(15)Not Null,
State varchar(30) Not Null,
Zip Bigint Not Null,
PhoneNumber Bigint Not Null,
Email varchar(50) Not Null)

Insert into AddressBook_Table(Firstname, Lastname, Address, City, State, Zip, PhoneNumber, Email)
Values('Abhishekh', 'Ratha', 'Old Mussorie Road', 'Dehradun', 'Uttrakhand', 248001, 7017782365, 'abhirartha@gmail.com'),
('Kshitij', 'Puri', 'Turner Road', 'Roorke', 'Uttrakhand', 267001, 9837010277, 'puri.kshitij10@gmail.com'),
('Himanshu', 'Mahara', 'Sector-84','Noida', 'Uttar Pradesh', 247965, 8926452301, 'himanshu249@gmail.com')

Update AddressBook_Table set PhoneNumber = 8006907440 where Firstname = 'Himanshu'

Delete from AddressBook_Table where Firstname='Kshitij' and Lastname='Puri'
