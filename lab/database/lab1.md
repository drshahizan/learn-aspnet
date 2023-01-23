# Create Table

Demonstrate how Visual Studio 2022 can be used to create a database by using SQL Server.

📌 Local file based database engine ... similar to Access with full SQL support for database up to 4 GB

📌 Right click on App_Data folder

- create a new database (Customer) ... note database explorer window now appears
- add a new table then add fields and data types
  - customerID ... int /FirstName ... varchar(50) /LastName...
  - varchar(50) /CreditLimit... money
  - varchar means variable length text 1-50 characters

Additionally, tables can be created by using SQL syntax. The following is the syntax:
```
CREATE TABLE [dbo].[Customer] ( [CustomerId] INT IDENTITY (1, 1) NOT NULL, 
   [FirstName] VARCHAR (50) NOT NULL, [LastName] VARCHAR (50) NOT NULL, 
   [CreditLimit] MONEY NOT NULL, PRIMARY KEY CLUSTERED ([CustomerId] ASC) );
```

aa
Figure 1: dbo.Customer.sql

- set identity specification for customerID and make it a keyfield save table (customer.mdf)
- edit SQL name from Table to Customer
- press Update (choose Update Database)
- go over to Server Explorer and Refresh ... the Customer table should now appear under the table section

Now enter data (right click on newly appearing Customer table / show table data)
aa
Figure 2: Customer Table

Source code:💾
