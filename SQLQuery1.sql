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

Select * from AddressBook_Table where City = 'Delhi' or State = 'Uttar Pradesh'

Insert into AddressBook_Table Values('Kshitij', 'Puri', 'Turner Road', 'Dehradun', 'Uttrakhand', 267001, 9837010277, 'puri.kshitij10@gmail.com')
Select Count(*),State,City from AddressBook_Table Group by State,City

select * from AddressBook_Table where City='Dehradun' order by Firstname

select * from AddressBook_Table

Alter table AddressBook_Table Add Type VARCHAR(20)
Update AddressBook_Table SET Type = 'Friends' where Firstname = 'Himanshu'
Update AddressBook_Table SET Type = 'Family' where Firstname = 'Kshitij'
Update AddressBook_Table SET Type = 'Family' where Firstname = 'Abhishekh'

Select COUNT(*),Type from AddressBook_Table Group by Type

Insert into AddressBook_Table(Firstname, Lastname, Address, City, State, Zip, PhoneNumber, Email, Type)
Values('Abhishekh', 'Ratha', 'Old Mussorie Road', 'Dehradun', 'Uttrakhand', 248001, 7017782365, 'abhirartha@gmail.com', 'Friends')

create table Location
(ID int,
Area varchar (20)
constraint Location_foreign_Key_ID foreign key(ID) references AddressBook_Table(ID) on delete cascade)

create table TypeTable
(ID int,
Type varchar(20),
constraint TypeTable_foreign_key foreign key(ID) references AddressBook_Table(ID) on delete cascade) 
Insert into TypeTable select ID, Type from AddressBook_Table